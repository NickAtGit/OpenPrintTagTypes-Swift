// Auto-generated from OpenPrintTag spec/data/aux_fields.yaml
// Do not edit manually - regenerate from YAML when spec updates

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
}
