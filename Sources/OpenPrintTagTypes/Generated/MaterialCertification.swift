// Auto-generated from OpenPrintTag spec/data/material_certifications_enum.yaml
// Do not edit manually - regenerate from YAML when spec updates

import Foundation

/// Certifications a material may have
public enum MaterialCertification: Int, Sendable, CaseIterable, Codable {
    /// GREENGUARD Certification - chemical emissions for building materials
    case ul2818 = 0

    /// UL 94 V0 - flammability of plastic materials (flame-retardant)
    case ul94V0 = 1

    /// UL 2904 - safe VOC/ultrafine particle emissions for indoor 3D printing
    case ul2904 = 2

    /// Display name for the certification
    public var displayName: String {
        switch self {
        case .ul2818: return "UL 2818"
        case .ul94V0: return "UL 94 V0"
        case .ul2904: return "UL 2904"
        }
    }

    /// Snake_case name matching the spec
    public var name: String {
        switch self {
        case .ul2818: return "ul_2818"
        case .ul94V0: return "ul_94_v0"
        case .ul2904: return "ul_2904"
        }
    }
}
