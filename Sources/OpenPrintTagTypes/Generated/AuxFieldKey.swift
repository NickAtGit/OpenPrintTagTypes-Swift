// Auto-generated from OpenPrintTag spec — do not edit manually
// Regenerate: python3 Scripts/generate_types.py

import Foundation

/// Field keys for the auxiliary section of OpenPrintTag CBOR data
public enum AuxFieldKey: UInt64, Sendable, CaseIterable, Codable {
    case consumedWeight = 0
    case workgroup = 1
    case generalPurposeRangeUser = 2
    case lastStirTime = 3

    /// Field name in snake_case format
    public var fieldName: String {
        switch self {
        case .consumedWeight: return "consumed_weight"
        case .workgroup: return "workgroup"
        case .generalPurposeRangeUser: return "general_purpose_range_user"
        case .lastStirTime: return "last_stir_time"
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
