// Auto-generated from OpenPrintTag spec — do not edit manually
// Regenerate: python3 Scripts/generate_types.py

import Foundation

/// Certifications a material may have
public enum MaterialCertification: Int, Sendable, CaseIterable, Codable {
    case ul2818 = 0
    case ul94V0 = 1
    case ul2904 = 2

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
