// Auto-generated from OpenPrintTag spec/data/meta_fields.yaml
// Do not edit manually - regenerate from YAML when spec updates

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
}
