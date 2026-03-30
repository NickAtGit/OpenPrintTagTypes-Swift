// Auto-generated from OpenPrintTag spec — do not edit manually
// Regenerate: python3 Scripts/generate_types.py

import Foundation

/// Field keys for the meta section of OpenPrintTag CBOR data
public enum MetaFieldKey: UInt64, Sendable, CaseIterable, Codable {
    case mainRegionOffset = 0
    case mainRegionSize = 1
    case auxRegionOffset = 2
    case auxRegionSize = 3

    /// Field name in snake_case format
    public var fieldName: String {
        switch self {
        case .mainRegionOffset: return "main_region_offset"
        case .mainRegionSize: return "main_region_size"
        case .auxRegionOffset: return "aux_region_offset"
        case .auxRegionSize: return "aux_region_size"
        }
    }

    /// Whether this field is required
    public var isRequired: Bool {
        false
    }

    /// Whether this field is recommended
    public var isRecommended: Bool {
        false
    }

    /// Whether this field is deprecated
    public var isDeprecated: Bool {
        false
    }
}
