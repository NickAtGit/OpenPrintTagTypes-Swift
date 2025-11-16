# OpenPrintTagTypes

Swift type definitions generated from the official [OpenPrintTag specification](https://github.com/prusa3d/OpenPrintTag).

## Overview

OpenPrintTag is an open standard for 3D printing material data format developed by Prusa Research. This package provides type-safe Swift representations of the OpenPrintTag data structures for use in iOS/macOS applications.

## Features

- **Type-safe enumerations** for material classes, types, and categories
- **Field key enums** for CBOR data structure navigation
- **Material property tags** with full metadata (70+ tags across 10 categories)
- **Write protection levels** for NFC tag security
- **Generated from official spec** - ensures consistency with the OpenPrintTag standard

## Installation

### Swift Package Manager

Add this package as a local dependency:

```swift
dependencies: [
    .package(path: "../OpenPrintTagTypes")
]
```

Or for remote installation (once published):

```swift
dependencies: [
    .package(url: "https://github.com/yourorg/OpenPrintTagTypes.git", from: "1.0.0")
]
```

## Usage

### Material Classification

```swift
import OpenPrintTagTypes

let materialClass = MaterialClass.fff
print(materialClass.displayName) // "Filament"

let materialType = MaterialType.pla
print(materialType.name) // "Polylactic Acid"
print(materialType.abbreviation) // "PLA"
print(materialType.materialClass) // .fff
```

### Material Property Tags

```swift
let tag = MaterialPropertyTag.biodegradable
print(tag.displayName) // "Biodegradable"
print(tag.category) // .biological
print(tag.category.emoji) // "🧬"

// Get all tags for a category
let biologicalTags = MaterialPropertyTag.tags(forCategory: .biological)

// Find tag by ID
if let tag = MaterialPropertyTag.tag(withId: 0) {
    print(tag.name) // "filtration_recommended"
}
```

### Field Keys (for CBOR parsing)

```swift
let mainKey = MainFieldKey.materialName
print(mainKey.rawValue) // CBOR key value
print(mainKey.fieldName) // "material_name"
print(mainKey.isRequired) // false
print(mainKey.isRecommended) // true

// Auxiliary fields
let auxKey = AuxFieldKey.consumedWeight
print(auxKey.fieldName) // "consumed_weight"

// Meta fields
let metaKey = MetaFieldKey.mainOffset
print(metaKey.fieldName) // "main_offset"
```

### Write Protection

```swift
let protection = WriteProtection.no
print(protection.isWritable) // true
print(protection.isUnlockable) // false
```

## Generated Types

| File | Description | Count |
|------|-------------|-------|
| `MaterialClass.swift` | FFF/SLA classification | 2 types |
| `MaterialType.swift` | Material types (PLA, PETG, etc.) | 40 types |
| `TagCategory.swift` | Property tag categories | 10 categories |
| `MaterialPropertyTag.swift` | Material properties | 70 tags |
| `WriteProtection.swift` | NFC write protection levels | 3 levels |
| `MainFieldKey.swift` | Main CBOR field keys | 53 fields |
| `AuxFieldKey.swift` | Auxiliary CBOR field keys | 4 fields |
| `MetaFieldKey.swift` | Meta CBOR field keys | 4 fields |

## Updating from Spec

The types in this package are generated from YAML files in the OpenPrintTag specification (included as a git submodule at `spec/`).

To update when the spec changes:

```bash
cd spec
git pull origin main
cd ..

# Run generation scripts (if you've updated them)
python3 Scripts/generate_types.py

# Review changes and commit
git add Sources/OpenPrintTagTypes/Generated/
git commit -m "Update types from OpenPrintTag spec vX.Y.Z"
```

## Package Structure

```
OpenPrintTagTypes/
├── Package.swift
├── README.md
├── Sources/
│   └── OpenPrintTagTypes/
│       └── Generated/            # Auto-generated Swift files
│           ├── MaterialClass.swift
│           ├── MaterialType.swift
│           ├── TagCategory.swift
│           ├── MaterialPropertyTag.swift
│           ├── WriteProtection.swift
│           ├── MainFieldKey.swift
│           ├── AuxFieldKey.swift
│           └── MetaFieldKey.swift
├── Tests/
│   └── OpenPrintTagTypesTests/
├── Scripts/                       # Code generation scripts
└── spec/                          # OpenPrintTag spec (git submodule)
```

## Requirements

- iOS 16.0+ / macOS 13.0+
- Swift 5.9+

## License

This package provides Swift bindings for the OpenPrintTag specification. See the [OpenPrintTag repository](https://github.com/prusa3d/OpenPrintTag) for specification licensing.

## Related Packages

- [NFCService](https://github.com/NickAtGit/NFCService) - NFC reading/writing with OpenPrintTag support
- [OpenPrintTag Spec](https://github.com/prusa3d/OpenPrintTag) - Official specification

## Credits

- OpenPrintTag specification by [Prusa Research](https://www.prusa3d.com/)
- Swift type generation and packaging by [Your Organization]
