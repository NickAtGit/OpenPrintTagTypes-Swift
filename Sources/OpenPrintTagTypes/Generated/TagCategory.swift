// Auto-generated from OpenPrintTag spec — do not edit manually
// Regenerate: python3 Scripts/generate_types.py

import Foundation

/// Categories for material property tags
public enum TagCategory: String, Sendable, CaseIterable, Codable {
    case biological = "biological"
    case physical = "physical"
    case electrical = "electrical"
    case chemical = "chemical"
    case visual = "visual"
    case additivesOrganic = "additives_organic"
    case additivesMetal = "additives_metal"
    case additivesOther = "additives_other"
    case imitation = "imitation"
    case other = "other"

    public var displayName: String {
        switch self {
        case .biological: return "Biological"
        case .physical: return "Physical"
        case .electrical: return "Electrical"
        case .chemical: return "Chemical"
        case .visual: return "Visual"
        case .additivesOrganic: return "Organic additives"
        case .additivesMetal: return "Metal additives"
        case .additivesOther: return "Other additives"
        case .imitation: return "Imitation"
        case .other: return "Other"
        }
    }

    public var emoji: String {
        switch self {
        case .biological: return "🧬"
        case .physical: return "⚙️"
        case .electrical: return "⚡"
        case .chemical: return "🧪"
        case .visual: return "👁️"
        case .additivesOrganic: return "🌿"
        case .additivesMetal: return "🔩"
        case .additivesOther: return "✨"
        case .imitation: return "🎭"
        case .other: return "📦"
        }
    }
}
