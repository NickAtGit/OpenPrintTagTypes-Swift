// Auto-generated from OpenPrintTag spec/data/tag_categories_enum.yaml
// Do not edit manually - regenerate from YAML when spec updates

import Foundation

/// Category for material property tags
public enum TagCategory: String, Sendable, Equatable, Codable, CaseIterable {
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

    /// Human-readable display name
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

    /// Emoji representation
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
