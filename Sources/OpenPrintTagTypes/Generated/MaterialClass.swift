// Auto-generated from OpenPrintTag spec/data/material_class_enum.yaml
// Do not edit manually - regenerate from YAML when spec updates

import Foundation

/// Material class for 3D printing
public enum MaterialClass: Int, Sendable, Equatable, Codable, CaseIterable {
    /// Fused Filament Fabrication (Filament)
    case fff = 0

    /// Stereolithography (Resin)
    case sla = 1

    /// Human-readable display name
    public var displayName: String {
        switch self {
        case .fff: return "Filament"
        case .sla: return "Resin"
        }
    }

    /// Technical abbreviation
    public var abbreviation: String {
        switch self {
        case .fff: return "FFF"
        case .sla: return "SLA"
        }
    }

    /// Detailed description
    public var description: String {
        displayName
    }
}
