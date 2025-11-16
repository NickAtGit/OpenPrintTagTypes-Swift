// Auto-generated from OpenPrintTag spec/data/tags_enum.yaml
// Do not edit manually - regenerate from YAML when spec updates

import Foundation

/// Material property tag
public struct MaterialPropertyTag: Identifiable, Hashable, Sendable, Codable {
    public let id: Int
    public let name: String
    public let category: TagCategory
    public let displayName: String
    public let description: String
    
    public init(id: Int, name: String, category: TagCategory, displayName: String, description: String) {
        self.id = id
        self.name = name
        self.category = category
        self.displayName = displayName
        self.description = description
    }
    
    // MARK: - All Tags
    
    public static let filtrationRecommended = MaterialPropertyTag(
        id: 0,
        name: "filtration_recommended",
        category: .biological,
        displayName: "Filtration recommended",
        description: "Releases a higher concentration of unsafe particles/fumes during printing so a HEPA and carbon filter is strongly recommended."
    )
    
    public static let biocompatible = MaterialPropertyTag(
        id: 1,
        name: "biocompatible",
        category: .biological,
        displayName: "Biocompatible",
        description: "Certified biocompatibility (does not cause harmful effects when in contact with the body)."
    )
    
    public static let homeCompostable = MaterialPropertyTag(
        id: 61,
        name: "home_compostable",
        category: .biological,
        displayName: "Home compostable",
        description: "Decomposes into natural elements in a home compost system at ambient temperatures."
    )
    
    public static let industriallyCompostable = MaterialPropertyTag(
        id: 62,
        name: "industrially_compostable",
        category: .biological,
        displayName: "Industrially compostable",
        description: "Decomposes into natural elements under specific temperature and microbial conditions in commercial composting facilities."
    )
    
    public static let bioBased = MaterialPropertyTag(
        id: 63,
        name: "bio_based",
        category: .biological,
        displayName: "Bio-based",
        description: "Predominantly made from renewable biological resources, like plants."
    )
    
    public static let antibacterial = MaterialPropertyTag(
        id: 2,
        name: "antibacterial",
        category: .biological,
        displayName: "Antibacterial",
        description: "Has antibacterial properties."
    )
    
    public static let airFiltering = MaterialPropertyTag(
        id: 3,
        name: "air_filtering",
        category: .biological,
        displayName: "Air filtering",
        description: "Has air filtering properties (absorbs/filters harmful compounds/particles from the air)."
    )
    
    public static let abrasive = MaterialPropertyTag(
        id: 4,
        name: "abrasive",
        category: .physical,
        displayName: "Abrasive",
        description: "The material is abrasive and requires an abrasive-resistant nozzle."
    )
    
    public static let foaming = MaterialPropertyTag(
        id: 5,
        name: "foaming",
        category: .physical,
        displayName: "Foaming",
        description: "The material increases its volume during extrusion."
    )
    
    public static let castable = MaterialPropertyTag(
        id: 67,
        name: "castable",
        category: .physical,
        displayName: "Castable",
        description: "The material is suitable to be used as a sacrificial pattern for investment casting. It can be cleanly removed from the mold (typically burned out or melted away), leaving minimal residue (for example ashes). This does NOT mean that the material is used for the mold or the final cast itself, only the investment pattern."
    )
    
    public static let selfExtinguishing = MaterialPropertyTag(
        id: 6,
        name: "self_extinguishing",
        category: .physical,
        displayName: "Self-extinguishing",
        description: "The material is self-extinguishing. This does not mean that the material is not flammable, just that burning it implies more energy than it produces. Meets at least UL 94 HB."
    )
    
    public static let paramagnetic = MaterialPropertyTag(
        id: 7,
        name: "paramagnetic",
        category: .physical,
        displayName: "Paramagnetic",
        description: "The material has paramagnetic properties, meaning that it is (weakly) attracted to magnets."
    )
    
    public static let radiationShielding = MaterialPropertyTag(
        id: 8,
        name: "radiation_shielding",
        category: .physical,
        displayName: "Radiation shielding",
        description: "Has radiation shielding properties."
    )
    
    public static let highTemperature = MaterialPropertyTag(
        id: 9,
        name: "high_temperature",
        category: .physical,
        displayName: "High temperature",
        description: "The material softens at higher temperatures than what is common for the material type, while keeping similar printing temperatures. Can be used for HTPLA filament while keeping the PLA material type. This does NOT indicate increase resistance to flame/burning. **Note:** If the material type would be 'HTPLA', adding this tag would mean 'high-temperature variant of a high-temperature PLA'"
    )
    
    public static let esdSafe = MaterialPropertyTag(
        id: 10,
        name: "esd_safe",
        category: .electrical,
        displayName: "ESD safe",
        description: "The material is static dissipative - prevents electrostatic charge buildup by allowing gradual dissipation of the charge. Useful for protecting sensitive electronic components. Sheet resistance R >= 1e5 Ω/□ && R < 1e12 Ω/□ or volumetric resistivity ρ >= 1e4 Ω⋅cm && ρ < 1e11 Ω⋅cm. The tag does NOT cover the \"anti-static\" materials (that have higher resistances)."
    )
    
    public static let conductive = MaterialPropertyTag(
        id: 11,
        name: "conductive",
        category: .electrical,
        displayName: "Conductive",
        description: "The material can conduct electricity. This does NOT mean that it the material is a good conductor, such as metals. Common \"conductive\" material have resistances in the range of kiloohms on 10 cm of filament. Sheet resistance R < 1e5 Ω/□ or volumetric resistivity ρ < 1e4 Ω⋅cm."
    )
    
    public static let emiShielding = MaterialPropertyTag(
        id: 70,
        name: "emi_shielding",
        category: .electrical,
        displayName: "EMI shielding",
        description: "The material can be effectively used for shielding against electromagnetic interference. Sheet resistance R < 1 Ω/□ or volumetric resistivity ρ < 1e-2 Ω⋅cm."
    )
    
    public static let blend = MaterialPropertyTag(
        id: 12,
        name: "blend",
        category: .chemical,
        displayName: "Blend",
        description: "The material is a blend of multiple polymers or a base polymer with significant additives that alter its properties and may require a specific print profile."
    )
    
    public static let waterSoluble = MaterialPropertyTag(
        id: 13,
        name: "water_soluble",
        category: .chemical,
        displayName: "Water soluble",
        description: "Can be dissolved in water."
    )
    
    public static let ipaSoluble = MaterialPropertyTag(
        id: 14,
        name: "ipa_soluble",
        category: .chemical,
        displayName: "IPA soluble",
        description: "Can be dissolved in IPA (isopropyl alcohol)."
    )
    
    public static let limoneneSoluble = MaterialPropertyTag(
        id: 15,
        name: "limonene_soluble",
        category: .chemical,
        displayName: "Limonene soluble",
        description: "Can be dissolved in limonene."
    )
    
    public static let lowOutgassing = MaterialPropertyTag(
        id: 64,
        name: "low_outgassing",
        category: .chemical,
        displayName: "Low outgassing",
        description: "Releases only minimal gas (and vapor) when placed in a vacuum."
    )
    
    public static let matte = MaterialPropertyTag(
        id: 16,
        name: "matte",
        category: .visual,
        displayName: "Matte",
        description: "Produces matte, non-shiny surface (very low specular reflection coefficient)."
    )
    
    public static let silk = MaterialPropertyTag(
        id: 17,
        name: "silk",
        category: .visual,
        displayName: "Silk",
        description: "Produces smooth, shiny/glossy surface (higher specular reflection coefficient)."
    )
    
    public static let translucent = MaterialPropertyTag(
        id: 19,
        name: "translucent",
        category: .visual,
        displayName: "Translucent",
        description: "Not fully opaque – [HueForge TD](https://shop.thehueforge.com/blogs/news/what-is-hueforge) >= `X` (exact `X` will be determined later). The material with this tag can possibly disperse light, meaning that while the light goes through it, the image is \"blurred\" and one does not see clearly what's on the other side. See the `transparent` tag."
    )
    
    public static let transparent = MaterialPropertyTag(
        id: 20,
        name: "transparent",
        category: .visual,
        displayName: "Transparent",
        description: "Not fully opaque, does not disperse light. Under correct printing conditions, can be printed with a see-through glass-like transparency."
    )
    
    public static let withoutPigments = MaterialPropertyTag(
        id: 65,
        name: "without_pigments",
        category: .visual,
        displayName: "Without pigments",
        description: "The material is of its \"natural\" color, no pigments were added."
    )
    
    public static let iridescent = MaterialPropertyTag(
        id: 21,
        name: "iridescent",
        category: .visual,
        displayName: "Iridescent",
        description: "Same as mystic. Changes color based on the viewing angle. See https://en.wikipedia.org/wiki/Iridescence"
    )
    
    public static let pearlescent = MaterialPropertyTag(
        id: 22,
        name: "pearlescent",
        category: .visual,
        displayName: "Pearlescent",
        description: "Special case of iridescent where the reflected light is mostly white. See https://en.wikipedia.org/wiki/Iridescence#Pearlescence"
    )
    
    public static let glitter = MaterialPropertyTag(
        id: 23,
        name: "glitter",
        category: .visual,
        displayName: "Glitter",
        description: "Contains coarse glitter particles, causing a shimmering effect. Similar to iridescent/pearlescent, but the individual particles causing the effect are larger, visible with the naked eye."
    )
    
    public static let glowInTheDark = MaterialPropertyTag(
        id: 24,
        name: "glow_in_the_dark",
        category: .visual,
        displayName: "Glow in the dark",
        description: "Glows in the dark (phosphorescent). The glow color doesn't necessarily match the base material color (`illuminescent_color_change`). The different glow color can be specified as secondary color of the material."
    )
    
    public static let neon = MaterialPropertyTag(
        id: 25,
        name: "neon",
        category: .visual,
        displayName: "Neon",
        description: "Neon color/glows under UV light (fluorescent). The glow color doesn't necessarily match the base material color (`illuminescent_color_change`). The different glow color can be specified as secondary color of the material."
    )
    
    public static let illuminescentColorChange = MaterialPropertyTag(
        id: 26,
        name: "illuminescent_color_change",
        category: .visual,
        displayName: "Illuminescent color change",
        description: "The glow color (caused by illuminiscence) is different to the material base color. For example the material is blue, but glows green in the dark or under the UV light. The glow color can be specified as a secondary color of the material."
    )
    
    public static let temperatureColorChange = MaterialPropertyTag(
        id: 27,
        name: "temperature_color_change",
        category: .visual,
        displayName: "Temperature color change",
        description: "Changes color based on the temperature."
    )
    
    public static let gradualColorChange = MaterialPropertyTag(
        id: 28,
        name: "gradual_color_change",
        category: .visual,
        displayName: "Gradual color change",
        description: "Transitions between colors as the filament is extruded. Does not necessary mean that the filament must go through the rainbow colors, gradual color change between two colors is enough to qualify."
    )
    
    public static let coextruded = MaterialPropertyTag(
        id: 29,
        name: "coextruded",
        category: .visual,
        displayName: "Coextruded",
        description: "Co-extruded from multiple colors. The colors are all present at any cross-section of the filament. Do not confuse with `gradual_color_change`. Does not have a primary color, number of colors can be derived from the defined secondary colors."
    )
    
    public static let containsCarbon = MaterialPropertyTag(
        id: 30,
        name: "contains_carbon",
        category: .additivesOther,
        displayName: "Contains carbon",
        description: "Contains carbon."
    )
    
    public static let containsCarbonFiber = MaterialPropertyTag(
        id: 31,
        name: "contains_carbon_fiber",
        category: .additivesOther,
        displayName: "Contains carbon fiber",
        description: "Contains carbon fibers."
    )
    
    public static let containsCarbonNanoTubes = MaterialPropertyTag(
        id: 32,
        name: "contains_carbon_nano_tubes",
        category: .additivesOther,
        displayName: "Contains carbon nano tubes",
        description: "Contains carbon nano tubes."
    )
    
    public static let containsGlass = MaterialPropertyTag(
        id: 33,
        name: "contains_glass",
        category: .additivesOther,
        displayName: "Contains glass",
        description: "Contains glass."
    )
    
    public static let containsGlassFiber = MaterialPropertyTag(
        id: 34,
        name: "contains_glass_fiber",
        category: .additivesOther,
        displayName: "Contains glass fiber",
        description: "Contains glass fibers."
    )
    
    public static let containsKevlar = MaterialPropertyTag(
        id: 35,
        name: "contains_kevlar",
        category: .additivesOther,
        displayName: "Contains Kevlar",
        description: "Contains kevlar (aramid)."
    )
    
    public static let containsPtfe = MaterialPropertyTag(
        id: 68,
        name: "contains_ptfe",
        category: .additivesOther,
        displayName: "Contains PTFE",
        description: "Contains polytetrafluoroethylene (PTFE)."
    )
    
    public static let containsStone = MaterialPropertyTag(
        id: 36,
        name: "contains_stone",
        category: .additivesOther,
        displayName: "Contains stone",
        description: "Contains stone."
    )
    
    public static let containsMagnetite = MaterialPropertyTag(
        id: 37,
        name: "contains_magnetite",
        category: .additivesOther,
        displayName: "Contains magnetite",
        description: "Contains magnetite."
    )
    
    public static let containsOrganicMaterial = MaterialPropertyTag(
        id: 38,
        name: "contains_organic_material",
        category: .additivesOrganic,
        displayName: "Contains organic material",
        description: "Contains organic material."
    )
    
    public static let containsCork = MaterialPropertyTag(
        id: 39,
        name: "contains_cork",
        category: .additivesOrganic,
        displayName: "Contains cork",
        description: "Contains cork."
    )
    
    public static let containsWax = MaterialPropertyTag(
        id: 40,
        name: "contains_wax",
        category: .additivesOrganic,
        displayName: "Contains wax",
        description: "Contains wax."
    )
    
    public static let containsWood = MaterialPropertyTag(
        id: 41,
        name: "contains_wood",
        category: .additivesOrganic,
        displayName: "Contains wood",
        description: "Contains wood."
    )
    
    public static let containsAlgae = MaterialPropertyTag(
        id: 66,
        name: "contains_algae",
        category: .additivesOrganic,
        displayName: "Contains algae",
        description: "Contains algae."
    )
    
    public static let containsBamboo = MaterialPropertyTag(
        id: 42,
        name: "contains_bamboo",
        category: .additivesOrganic,
        displayName: "Contains bamboo",
        description: "Contains bamboo."
    )
    
    public static let containsPine = MaterialPropertyTag(
        id: 43,
        name: "contains_pine",
        category: .additivesOrganic,
        displayName: "Contains pine",
        description: "Contains pine."
    )
    
    public static let containsCeramic = MaterialPropertyTag(
        id: 44,
        name: "contains_ceramic",
        category: .additivesOther,
        displayName: "Contains ceramic",
        description: "Contains ceramic."
    )
    
    public static let containsBoronCarbide = MaterialPropertyTag(
        id: 45,
        name: "contains_boron_carbide",
        category: .additivesOther,
        displayName: "Contains boron carbide",
        description: "Contains boron carbide (useful for radiation shielding)."
    )
    
    public static let containsMetal = MaterialPropertyTag(
        id: 46,
        name: "contains_metal",
        category: .additivesMetal,
        displayName: "Contains metal",
        description: "Contains metal. Specific type of metal contained can be expressed by an other tag."
    )
    
    public static let containsBronze = MaterialPropertyTag(
        id: 47,
        name: "contains_bronze",
        category: .additivesMetal,
        displayName: "Contains bronze",
        description: "Contains bronze."
    )
    
    public static let containsIron = MaterialPropertyTag(
        id: 48,
        name: "contains_iron",
        category: .additivesMetal,
        displayName: "Contains iron",
        description: "Contains iron."
    )
    
    public static let containsSteel = MaterialPropertyTag(
        id: 49,
        name: "contains_steel",
        category: .additivesMetal,
        displayName: "Contains steel",
        description: "Contains steel."
    )
    
    public static let containsSilver = MaterialPropertyTag(
        id: 50,
        name: "contains_silver",
        category: .additivesMetal,
        displayName: "Contains silver",
        description: "Contains silver (useful for antibacterial properties)."
    )
    
    public static let containsCopper = MaterialPropertyTag(
        id: 51,
        name: "contains_copper",
        category: .additivesMetal,
        displayName: "Contains copper",
        description: "Contains copper."
    )
    
    public static let containsAluminium = MaterialPropertyTag(
        id: 52,
        name: "contains_aluminium",
        category: .additivesMetal,
        displayName: "Contains aluminium",
        description: "Contains aluminium."
    )
    
    public static let containsBrass = MaterialPropertyTag(
        id: 53,
        name: "contains_brass",
        category: .additivesMetal,
        displayName: "Contains brass",
        description: "Contains brass."
    )
    
    public static let containsTungsten = MaterialPropertyTag(
        id: 54,
        name: "contains_tungsten",
        category: .additivesMetal,
        displayName: "Contains tungsten",
        description: "Contains Tungsten (useful for radiation shielding)."
    )
    
    public static let imitatesWood = MaterialPropertyTag(
        id: 55,
        name: "imitates_wood",
        category: .imitation,
        displayName: "Imitates wood",
        description: "Imitates wood."
    )
    
    public static let imitatesMetal = MaterialPropertyTag(
        id: 56,
        name: "imitates_metal",
        category: .imitation,
        displayName: "Imitates metal",
        description: "Imitates metal."
    )
    
    public static let imitatesMarble = MaterialPropertyTag(
        id: 57,
        name: "imitates_marble",
        category: .imitation,
        displayName: "Imitates marble",
        description: "Imitates marble."
    )
    
    public static let imitatesStone = MaterialPropertyTag(
        id: 58,
        name: "imitates_stone",
        category: .imitation,
        displayName: "Imitates stone",
        description: "Imitates stone."
    )
    
    public static let lithophane = MaterialPropertyTag(
        id: 59,
        name: "lithophane",
        category: .other,
        displayName: "Lithophane",
        description: "Specifically designed for lithophaning."
    )
    
    public static let recycled = MaterialPropertyTag(
        id: 60,
        name: "recycled",
        category: .other,
        displayName: "Recycled",
        description: "Part of the material is recycled."
    )
    
    public static let limitedEdition = MaterialPropertyTag(
        id: 69,
        name: "limited_edition",
        category: .other,
        displayName: "Limited edition",
        description: "The material is a limited edition run."
    )
    
    
    // MARK: - Collections
    
    public static let allTags: [MaterialPropertyTag] = [
        filtrationRecommended,
        biocompatible,
        homeCompostable,
        industriallyCompostable,
        bioBased,
        antibacterial,
        airFiltering,
        abrasive,
        foaming,
        castable,
        selfExtinguishing,
        paramagnetic,
        radiationShielding,
        highTemperature,
        esdSafe,
        conductive,
        emiShielding,
        blend,
        waterSoluble,
        ipaSoluble,
        limoneneSoluble,
        lowOutgassing,
        matte,
        silk,
        translucent,
        transparent,
        withoutPigments,
        iridescent,
        pearlescent,
        glitter,
        glowInTheDark,
        neon,
        illuminescentColorChange,
        temperatureColorChange,
        gradualColorChange,
        coextruded,
        containsCarbon,
        containsCarbonFiber,
        containsCarbonNanoTubes,
        containsGlass,
        containsGlassFiber,
        containsKevlar,
        containsPtfe,
        containsStone,
        containsMagnetite,
        containsOrganicMaterial,
        containsCork,
        containsWax,
        containsWood,
        containsAlgae,
        containsBamboo,
        containsPine,
        containsCeramic,
        containsBoronCarbide,
        containsMetal,
        containsBronze,
        containsIron,
        containsSteel,
        containsSilver,
        containsCopper,
        containsAluminium,
        containsBrass,
        containsTungsten,
        imitatesWood,
        imitatesMetal,
        imitatesMarble,
        imitatesStone,
        lithophane,
        recycled,
        limitedEdition
    ]
    
    /// Get tag by ID
    public static func tag(withId id: Int) -> MaterialPropertyTag? {
        allTags.first { $0.id == id }
    }
    
    /// Get all tags for a specific category
    public static func tags(forCategory category: TagCategory) -> [MaterialPropertyTag] {
        allTags.filter { $0.category == category }
    }
}
