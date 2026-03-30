// Auto-generated from OpenPrintTag spec — do not edit manually
// Regenerate: python3 Scripts/generate_types.py

import Foundation

/// Material property tags
public enum MaterialPropertyTag: Int, Sendable, CaseIterable, Codable {
    case filtrationRecommended = 0
    case biocompatible = 1
    case homeCompostable = 61
    case industriallyCompostable = 62
    case bioBased = 63
    case antibacterial = 2
    case airFiltering = 3
    case abrasive = 4
    case foaming = 5
    case castable = 67
    case selfExtinguishing = 6
    case paramagnetic = 7
    case radiationShielding = 8
    case highTemperature = 9
    case highSpeed = 71
    case esdSafe = 10
    case conductive = 11
    case emiShielding = 70
    case blend = 12
    case waterSoluble = 13
    case ipaSoluble = 14
    case limoneneSoluble = 15
    case lowOutgassing = 64
    case matte = 16
    case silk = 17
    case translucent = 19
    case transparent = 20
    case withoutPigments = 65
    case iridescent = 21
    case pearlescent = 22
    case glitter = 23
    case glowInTheDark = 24
    case neon = 25
    case illuminescentColorChange = 26
    case temperatureColorChange = 27
    case gradualColorChange = 28
    case coextruded = 29
    case containsCarbon = 30
    case containsCarbonFiber = 31
    case containsCarbonNanoTubes = 32
    case containsGraphene = 72
    case containsGlass = 33
    case containsGlassFiber = 34
    case containsKevlar = 35
    case containsPtfe = 68
    case containsStone = 36
    case containsMagnetite = 37
    case containsOrganicMaterial = 38
    case containsCork = 39
    case containsWax = 40
    case containsWood = 41
    case containsAlgae = 66
    case containsBamboo = 42
    case containsPine = 43
    case containsCeramic = 44
    case containsBoronCarbide = 45
    case containsMetal = 46
    case containsBronze = 47
    case containsIron = 48
    case containsSteel = 49
    case containsSilver = 50
    case containsCopper = 51
    case containsAluminium = 52
    case containsBrass = 53
    case containsTungsten = 54
    case imitatesWood = 55
    case imitatesMetal = 56
    case imitatesMarble = 57
    case imitatesStone = 58
    case lithophane = 59
    case recycled = 60
    case limitedEdition = 69

    public var displayName: String {
        switch self {
        case .filtrationRecommended: return "Filtration recommended"
        case .biocompatible: return "Biocompatible"
        case .homeCompostable: return "Home compostable"
        case .industriallyCompostable: return "Industrially compostable"
        case .bioBased: return "Bio-based"
        case .antibacterial: return "Antibacterial"
        case .airFiltering: return "Air filtering"
        case .abrasive: return "Abrasive"
        case .foaming: return "Foaming"
        case .castable: return "Castable"
        case .selfExtinguishing: return "Self-extinguishing"
        case .paramagnetic: return "Paramagnetic"
        case .radiationShielding: return "Radiation shielding"
        case .highTemperature: return "High temperature"
        case .highSpeed: return "High speed"
        case .esdSafe: return "ESD safe"
        case .conductive: return "Conductive"
        case .emiShielding: return "EMI shielding"
        case .blend: return "Blend"
        case .waterSoluble: return "Water soluble"
        case .ipaSoluble: return "IPA soluble"
        case .limoneneSoluble: return "Limonene soluble"
        case .lowOutgassing: return "Low outgassing"
        case .matte: return "Matte"
        case .silk: return "Silk"
        case .translucent: return "Translucent"
        case .transparent: return "Transparent"
        case .withoutPigments: return "Without pigments"
        case .iridescent: return "Iridescent"
        case .pearlescent: return "Pearlescent"
        case .glitter: return "Glitter"
        case .glowInTheDark: return "Glow in the dark"
        case .neon: return "Neon"
        case .illuminescentColorChange: return "Illuminescent color change"
        case .temperatureColorChange: return "Temperature color change"
        case .gradualColorChange: return "Gradual color change"
        case .coextruded: return "Coextruded"
        case .containsCarbon: return "Contains carbon"
        case .containsCarbonFiber: return "Contains carbon fiber"
        case .containsCarbonNanoTubes: return "Contains carbon nano tubes"
        case .containsGraphene: return "Contains graphene"
        case .containsGlass: return "Contains glass"
        case .containsGlassFiber: return "Contains glass fiber"
        case .containsKevlar: return "Contains Kevlar"
        case .containsPtfe: return "Contains PTFE"
        case .containsStone: return "Contains stone"
        case .containsMagnetite: return "Contains magnetite"
        case .containsOrganicMaterial: return "Contains organic material"
        case .containsCork: return "Contains cork"
        case .containsWax: return "Contains wax"
        case .containsWood: return "Contains wood"
        case .containsAlgae: return "Contains algae"
        case .containsBamboo: return "Contains bamboo"
        case .containsPine: return "Contains pine"
        case .containsCeramic: return "Contains ceramic"
        case .containsBoronCarbide: return "Contains boron carbide"
        case .containsMetal: return "Contains metal"
        case .containsBronze: return "Contains bronze"
        case .containsIron: return "Contains iron"
        case .containsSteel: return "Contains steel"
        case .containsSilver: return "Contains silver"
        case .containsCopper: return "Contains copper"
        case .containsAluminium: return "Contains aluminium"
        case .containsBrass: return "Contains brass"
        case .containsTungsten: return "Contains tungsten"
        case .imitatesWood: return "Imitates wood"
        case .imitatesMetal: return "Imitates metal"
        case .imitatesMarble: return "Imitates marble"
        case .imitatesStone: return "Imitates stone"
        case .lithophane: return "Lithophane"
        case .recycled: return "Recycled"
        case .limitedEdition: return "Limited edition"
        }
    }

    public var category: TagCategory {
        switch self {
        case .filtrationRecommended: return .biological
        case .biocompatible: return .biological
        case .homeCompostable: return .biological
        case .industriallyCompostable: return .biological
        case .bioBased: return .biological
        case .antibacterial: return .biological
        case .airFiltering: return .biological
        case .abrasive: return .physical
        case .foaming: return .physical
        case .castable: return .physical
        case .selfExtinguishing: return .physical
        case .paramagnetic: return .physical
        case .radiationShielding: return .physical
        case .highTemperature: return .physical
        case .highSpeed: return .physical
        case .esdSafe: return .electrical
        case .conductive: return .electrical
        case .emiShielding: return .electrical
        case .blend: return .chemical
        case .waterSoluble: return .chemical
        case .ipaSoluble: return .chemical
        case .limoneneSoluble: return .chemical
        case .lowOutgassing: return .chemical
        case .matte: return .visual
        case .silk: return .visual
        case .translucent: return .visual
        case .transparent: return .visual
        case .withoutPigments: return .visual
        case .iridescent: return .visual
        case .pearlescent: return .visual
        case .glitter: return .visual
        case .glowInTheDark: return .visual
        case .neon: return .visual
        case .illuminescentColorChange: return .visual
        case .temperatureColorChange: return .visual
        case .gradualColorChange: return .visual
        case .coextruded: return .visual
        case .containsCarbon: return .additivesOther
        case .containsCarbonFiber: return .additivesOther
        case .containsCarbonNanoTubes: return .additivesOther
        case .containsGraphene: return .additivesOther
        case .containsGlass: return .additivesOther
        case .containsGlassFiber: return .additivesOther
        case .containsKevlar: return .additivesOther
        case .containsPtfe: return .additivesOther
        case .containsStone: return .additivesOther
        case .containsMagnetite: return .additivesOther
        case .containsOrganicMaterial: return .additivesOrganic
        case .containsCork: return .additivesOrganic
        case .containsWax: return .additivesOrganic
        case .containsWood: return .additivesOrganic
        case .containsAlgae: return .additivesOrganic
        case .containsBamboo: return .additivesOrganic
        case .containsPine: return .additivesOrganic
        case .containsCeramic: return .additivesOther
        case .containsBoronCarbide: return .additivesOther
        case .containsMetal: return .additivesMetal
        case .containsBronze: return .additivesMetal
        case .containsIron: return .additivesMetal
        case .containsSteel: return .additivesMetal
        case .containsSilver: return .additivesMetal
        case .containsCopper: return .additivesMetal
        case .containsAluminium: return .additivesMetal
        case .containsBrass: return .additivesMetal
        case .containsTungsten: return .additivesMetal
        case .imitatesWood: return .imitation
        case .imitatesMetal: return .imitation
        case .imitatesMarble: return .imitation
        case .imitatesStone: return .imitation
        case .lithophane: return .other
        case .recycled: return .other
        case .limitedEdition: return .other
        }
    }
}
