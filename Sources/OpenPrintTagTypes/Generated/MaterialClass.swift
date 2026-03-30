// Auto-generated from OpenPrintTag spec — do not edit manually
// Regenerate: python3 Scripts/generate_types.py

import Foundation

/// Material class (FFF or SLA)
public enum MaterialClass: Int, Sendable, CaseIterable, Codable {
    case FFF = 0
    case SLA = 1

    public var displayName: String {
        switch self {
        case .FFF: return "Filament"
        case .SLA: return "Resin"
        }
    }
}
