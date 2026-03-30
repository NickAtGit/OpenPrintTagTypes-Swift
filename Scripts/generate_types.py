#!/usr/bin/env python3
"""Generate Swift type definitions from OpenPrintTag spec YAML files.

Usage:
    cd spec && git pull origin main && cd ..
    python3 Scripts/generate_types.py
"""

import os
import re
import yaml

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
ROOT_DIR = os.path.dirname(SCRIPT_DIR)
SPEC_DIR = os.path.join(ROOT_DIR, "spec", "data")
OUT_DIR = os.path.join(ROOT_DIR, "Sources", "OpenPrintTagTypes", "Generated")

HEADER = "// Auto-generated from OpenPrintTag spec — do not edit manually\n// Regenerate: python3 Scripts/generate_types.py\n\nimport Foundation\n"


def load_yaml(name):
    with open(os.path.join(SPEC_DIR, name), encoding="utf-8") as f:
        return yaml.safe_load(f)


def to_camel(snake, upper_first=False):
    parts = snake.split("_")
    result = parts[0] + "".join(p.capitalize() for p in parts[1:])
    if upper_first:
        result = result[0].upper() + result[1:]
    # Fix common casing
    for old, new in [("Uuid", "Uuid"), ("Gtin", "Gtin"), ("Id", "Id")]:
        pass  # Already correct in camelCase
    return result


def generate_field_key_enum(name, yaml_file, swift_name):
    fields = load_yaml(yaml_file)
    lines = [HEADER, f"/// Field keys for the {name} section of OpenPrintTag CBOR data"]
    lines.append(f"public enum {swift_name}: UInt64, Sendable, CaseIterable, Codable {{")

    for f in fields:
        key = f["key"]
        fname = f["name"] if "name" in f and f["name"] else f"deprecated_{key}"
        deprecated = f.get("deprecated", False)
        camel = to_camel(fname)
        if deprecated:
            lines.append(f'    @available(*, deprecated, message: "Removed from spec")')
        lines.append(f"    case {camel} = {key}")

    # fieldName property
    lines.append("")
    lines.append("    /// Field name in snake_case format")
    lines.append("    public var fieldName: String {")
    lines.append("        switch self {")
    for f in fields:
        fname = f["name"] if "name" in f and f["name"] else f"deprecated_{f['key']}"
        camel = to_camel(fname)
        lines.append(f'        case .{camel}: return "{fname}"')
    lines.append("        }")
    lines.append("    }")

    # isRequired
    required_fields = [f for f in fields if f.get("required") == True or f.get("required") == "required"]
    lines.append("")
    lines.append("    /// Whether this field is required")
    lines.append("    public var isRequired: Bool {")
    if required_fields:
        lines.append("        switch self {")
        for f in required_fields:
            camel = to_camel(f["name"])
            lines.append(f"        case .{camel}: return true")
        lines.append("        default: return false")
        lines.append("        }")
    else:
        lines.append("        false")
    lines.append("    }")

    # isRecommended
    recommended_fields = [f for f in fields if f.get("required") == "recommended"]
    lines.append("")
    lines.append("    /// Whether this field is recommended")
    lines.append("    public var isRecommended: Bool {")
    if recommended_fields:
        lines.append("        switch self {")
        for f in recommended_fields:
            camel = to_camel(f["name"])
            lines.append(f"        case .{camel}: return true")
        lines.append("        default: return false")
        lines.append("        }")
    else:
        lines.append("        false")
    lines.append("    }")

    # isDeprecated
    deprecated_fields = [f for f in fields if f.get("deprecated", False)]
    lines.append("")
    lines.append("    /// Whether this field is deprecated")
    lines.append("    public var isDeprecated: Bool {")
    if deprecated_fields:
        lines.append("        switch self {")
        for f in deprecated_fields:
            fname = f["name"] if "name" in f and f["name"] else f"deprecated_{f['key']}"
            camel = to_camel(fname)
            lines.append(f"        case .{camel}: return true")
        lines.append("        default: return false")
        lines.append("        }")
    else:
        lines.append("        false")
    lines.append("    }")

    lines.append("}")
    return "\n".join(lines) + "\n"


def generate_simple_enum(yaml_file, swift_name, doc, extra_props=None):
    items = load_yaml(yaml_file)
    lines = [HEADER, f"/// {doc}"]
    lines.append(f"public enum {swift_name}: Int, Sendable, CaseIterable, Codable {{")

    for item in items:
        camel = to_camel(item["name"])
        lines.append(f"    case {camel} = {item['key']}")

    # displayName
    if any("display_name" in item for item in items):
        lines.append("")
        lines.append("    public var displayName: String {")
        lines.append("        switch self {")
        for item in items:
            camel = to_camel(item["name"])
            display = item.get("display_name", item["name"].replace("_", " ").title())
            lines.append(f'        case .{camel}: return "{display}"')
        lines.append("        }")
        lines.append("    }")

    # name property
    lines.append("")
    lines.append("    /// Snake_case name matching the spec")
    lines.append("    public var name: String {")
    lines.append("        switch self {")
    for item in items:
        camel = to_camel(item["name"])
        lines.append(f'        case .{camel}: return "{item["name"]}"')
    lines.append("        }")
    lines.append("    }")

    if extra_props:
        for prop_name, prop_func in extra_props.items():
            lines.extend(prop_func(items))

    lines.append("}")
    return "\n".join(lines) + "\n"


def generate_material_type():
    items = load_yaml("material_type_enum.yaml")
    lines = [HEADER, "/// Material type classifications"]
    lines.append("public enum MaterialType: Int, Sendable, CaseIterable, Codable {")

    for item in items:
        camel = to_camel(item["abbreviation"].lower().replace("-", "_").replace("+", "Plus").replace(" ", "_"))
        lines.append(f"    case {camel} = {item['key']}")

    # abbreviation
    lines.append("")
    lines.append("    public var abbreviation: String {")
    lines.append("        switch self {")
    for item in items:
        camel = to_camel(item["abbreviation"].lower().replace("-", "_").replace("+", "Plus").replace(" ", "_"))
        lines.append(f'        case .{camel}: return "{item["abbreviation"]}"')
    lines.append("        }")
    lines.append("    }")

    # full name
    lines.append("")
    lines.append("    public var fullName: String {")
    lines.append("        switch self {")
    for item in items:
        camel = to_camel(item["abbreviation"].lower().replace("-", "_").replace("+", "Plus").replace(" ", "_"))
        name = item.get("name", item["abbreviation"])
        lines.append(f'        case .{camel}: return "{name}"')
    lines.append("        }")
    lines.append("    }")

    # materialClass
    lines.append("")
    lines.append("    public var materialClass: MaterialClass {")
    lines.append("        switch self {")
    for item in items:
        camel = to_camel(item["abbreviation"].lower().replace("-", "_").replace("+", "Plus").replace(" ", "_"))
        cat = item.get("category", "fff")
        mc = "sla" if cat == "sla" else "fff"
        lines.append(f"        case .{camel}: return .{mc}")
    lines.append("        }")
    lines.append("    }")

    lines.append("}")
    return "\n".join(lines) + "\n"


def generate_material_class():
    items = load_yaml("material_class_enum.yaml")
    lines = [HEADER, "/// Material class (FFF or SLA)"]
    lines.append("public enum MaterialClass: Int, Sendable, CaseIterable, Codable {")
    for item in items:
        lines.append(f"    case {item['name']} = {item['key']}")
    lines.append("")
    lines.append("    public var displayName: String {")
    lines.append("        switch self {")
    for item in items:
        desc = item.get("description", item["name"].upper())
        if isinstance(desc, list):
            desc = desc[0]
        lines.append(f'        case .{item["name"]}: return "{desc}"')
    lines.append("        }")
    lines.append("    }")
    lines.append("}")
    return "\n".join(lines) + "\n"


def generate_material_property_tag():
    tags = load_yaml("tags_enum.yaml")
    categories = load_yaml("tag_categories_enum.yaml")

    lines = [HEADER, "/// Material property tags"]
    lines.append("public enum MaterialPropertyTag: Int, Sendable, CaseIterable, Codable {")
    tags = [t for t in tags if not t.get("deprecated", False) and "name" in t]
    for tag in tags:
        camel = to_camel(tag["name"])
        lines.append(f"    case {camel} = {tag['key']}")

    # displayName
    lines.append("")
    lines.append("    public var displayName: String {")
    lines.append("        switch self {")
    for tag in tags:
        camel = to_camel(tag["name"])
        display = tag.get("display_name", tag["name"].replace("_", " ").title())
        lines.append(f'        case .{camel}: return "{display}"')
    lines.append("        }")
    lines.append("    }")

    # category
    lines.append("")
    lines.append("    public var category: TagCategory {")
    lines.append("        switch self {")
    for tag in tags:
        camel = to_camel(tag["name"])
        cat = to_camel(tag["category"])
        lines.append(f"        case .{camel}: return .{cat}")
    lines.append("        }")
    lines.append("    }")

    lines.append("}")
    return "\n".join(lines) + "\n"


def generate_tag_category():
    categories = load_yaml("tag_categories_enum.yaml")
    lines = [HEADER, "/// Categories for material property tags"]
    lines.append("public enum TagCategory: String, Sendable, CaseIterable, Codable {")
    for cat in categories:
        camel = to_camel(cat["name"])
        lines.append(f'    case {camel} = "{cat["name"]}"')

    # displayName
    lines.append("")
    lines.append("    public var displayName: String {")
    lines.append("        switch self {")
    for cat in categories:
        camel = to_camel(cat["name"])
        lines.append(f'        case .{camel}: return "{cat["display_name"]}"')
    lines.append("        }")
    lines.append("    }")

    # emoji
    lines.append("")
    lines.append("    public var emoji: String {")
    lines.append("        switch self {")
    for cat in categories:
        camel = to_camel(cat["name"])
        lines.append(f'        case .{camel}: return "{cat["emoji"]}"')
    lines.append("        }")
    lines.append("    }")

    lines.append("}")
    return "\n".join(lines) + "\n"


def generate_write_protection():
    items = load_yaml("write_protection_enum.yaml")
    lines = [HEADER, "/// Write protection levels for NFC tags"]
    lines.append("public enum WriteProtection: Int, Sendable, CaseIterable, Codable {")
    for item in items:
        camel = to_camel(item["name"])
        lines.append(f"    case {camel} = {item['key']}")

    lines.append("")
    lines.append("    public var isWritable: Bool {")
    lines.append("        self == .no")
    lines.append("    }")

    lines.append("")
    lines.append("    public var isUnlockable: Bool {")
    lines.append("        self == .reversible")
    lines.append("    }")

    lines.append("}")
    return "\n".join(lines) + "\n"


def write_file(filename, content):
    path = os.path.join(OUT_DIR, filename)
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)
    print(f"  Generated {filename}")


def main():
    print(f"Generating Swift types from {SPEC_DIR}...")

    write_file("MainFieldKey.swift", generate_field_key_enum("main", "main_fields.yaml", "MainFieldKey"))
    write_file("AuxFieldKey.swift", generate_field_key_enum("auxiliary", "aux_fields.yaml", "AuxFieldKey"))
    write_file("MetaFieldKey.swift", generate_field_key_enum("meta", "meta_fields.yaml", "MetaFieldKey"))
    write_file("MaterialClass.swift", generate_material_class())
    write_file("MaterialType.swift", generate_material_type())
    write_file("MaterialPropertyTag.swift", generate_material_property_tag())
    write_file("TagCategory.swift", generate_tag_category())
    write_file("MaterialCertification.swift", generate_simple_enum(
        "material_certifications_enum.yaml", "MaterialCertification", "Certifications a material may have"))
    write_file("WriteProtection.swift", generate_write_protection())

    print("Done!")


if __name__ == "__main__":
    main()
