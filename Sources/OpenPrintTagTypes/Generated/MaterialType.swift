// Auto-generated from OpenPrintTag spec/data/material_type_enum.yaml
// Do not edit manually - regenerate from YAML when spec updates

import Foundation

/// Material type for 3D printing
public enum MaterialType: Int, Sendable, Equatable, Codable, CaseIterable {
    case pla = 0
    case petg = 1
    case tpu = 2
    case abs = 3
    case asa = 4
    case pc = 5
    case pctg = 6
    case pp = 7
    case pa6 = 8
    case pa11 = 9
    case pa12 = 10
    case pa66 = 11
    case cpe = 12
    case tpe = 13
    case hips = 14
    case pha = 15
    case pet = 16
    case pei = 17
    case pbt = 18
    case pvb = 19
    case pva = 20
    case pekk = 21
    case peek = 22
    case bvoh = 23
    case tpc = 24
    case pps = 25
    case ppsu = 26
    case pvc = 27
    case peba = 28
    case pvdf = 29
    case ppa = 30
    case pcl = 31
    case pes = 32
    case pmma = 33
    case pom = 34
    case ppe = 35
    case ps = 36
    case psu = 37
    case tpi = 38
    case sbs = 39

    /// Abbreviated material name
    public var abbreviation: String {
        switch self {
        case .pla: return "PLA"
        case .petg: return "PETG"
        case .tpu: return "TPU"
        case .abs: return "ABS"
        case .asa: return "ASA"
        case .pc: return "PC"
        case .pctg: return "PCTG"
        case .pp: return "PP"
        case .pa6: return "PA6"
        case .pa11: return "PA11"
        case .pa12: return "PA12"
        case .pa66: return "PA66"
        case .cpe: return "CPE"
        case .tpe: return "TPE"
        case .hips: return "HIPS"
        case .pha: return "PHA"
        case .pet: return "PET"
        case .pei: return "PEI"
        case .pbt: return "PBT"
        case .pvb: return "PVB"
        case .pva: return "PVA"
        case .pekk: return "PEKK"
        case .peek: return "PEEK"
        case .bvoh: return "BVOH"
        case .tpc: return "TPC"
        case .pps: return "PPS"
        case .ppsu: return "PPSU"
        case .pvc: return "PVC"
        case .peba: return "PEBA"
        case .pvdf: return "PVDF"
        case .ppa: return "PPA"
        case .pcl: return "PCL"
        case .pes: return "PES"
        case .pmma: return "PMMA"
        case .pom: return "POM"
        case .ppe: return "PPE"
        case .ps: return "PS"
        case .psu: return "PSU"
        case .tpi: return "TPI"
        case .sbs: return "SBS"
        }
    }

    /// Full chemical name
    public var name: String {
        switch self {
        case .pla: return "Polylactic Acid"
        case .petg: return "Polyethylene Terephthalate Glycol"
        case .tpu: return "Thermoplastic Polyurethane"
        case .abs: return "Acrylonitrile Butadiene Styrene"
        case .asa: return "Acrylonitrile Styrene Acrylate"
        case .pc: return "Polycarbonate"
        case .pctg: return "Polycyclohexylenedimethylene Terephthalate Glycol"
        case .pp: return "Polypropylene"
        case .pa6: return "Polyamide 6"
        case .pa11: return "Polyamide 11"
        case .pa12: return "Polyamide 12"
        case .pa66: return "Polyamide 66"
        case .cpe: return "Copolyester"
        case .tpe: return "Thermoplastic Elastomer"
        case .hips: return "High Impact Polystyrene"
        case .pha: return "Polyhydroxyalkanoate"
        case .pet: return "Polyethylene Terephthalate"
        case .pei: return "Polyetherimide"
        case .pbt: return "Polybutylene Terephthalate"
        case .pvb: return "Polyvinyl Butyral"
        case .pva: return "Polyvinyl Alcohol"
        case .pekk: return "Polyetherketoneketone"
        case .peek: return "Polyether Ether Ketone"
        case .bvoh: return "Butenediol Vinyl Alcohol Copolymer"
        case .tpc: return "Thermoplastic Copolyester"
        case .pps: return "Polyphenylene Sulfide"
        case .ppsu: return "Polyphenylsulfone"
        case .pvc: return "Polyvinyl Chloride"
        case .peba: return "Polyether Block Amide"
        case .pvdf: return "Polyvinylidene Fluoride"
        case .ppa: return "Polyphthalamide"
        case .pcl: return "Polycaprolactone"
        case .pes: return "Polyethersulfone"
        case .pmma: return "Polymethyl Methacrylate"
        case .pom: return "Polyoxymethylene"
        case .ppe: return "Polyphenylene Ether"
        case .ps: return "Polystyrene"
        case .psu: return "Polysulfone"
        case .tpi: return "Thermoplastic Polyimide"
        case .sbs: return "Styrene-Butadiene-Styrene"
        }
    }

    /// Material class (FFF or SLA)
    public var materialClass: MaterialClass {
        // All current materials are FFF - SLA materials may be added in future spec updates
        return .fff
    }

    /// Detailed description of the material and its uses
    public var description: String {
        switch self {
        case .pla: return "Easy-to-print, biodegradable material. Ideal for beginners, prototypes, and models."
        case .petg: return "Durable, strong, and temperature-resistant. Great for mechanical parts and functional prints."
        case .tpu: return "A flexible, rubber-like material. Used for phone cases, vibration dampeners, and other soft parts."
        case .abs: return "Strong, durable, and heat-resistant plastic. Used for functional parts like car interiors and LEGOs. Requires a heated bed and enclosure."
        case .asa: return "Similar to ABS but with high UV and weather resistance, making it perfect for outdoor applications."
        case .pc: return "Extremely strong, impact-resistant, and heat-resistant. Used for demanding engineering applications."
        case .pctg: return "A tougher alternative to PETG with higher impact and chemical resistance."
        case .pp: return "Lightweight, chemically resistant, and flexible. Used for creating living hinges and durable containers."
        case .pa6: return "A type of Nylon that is tough and wear-resistant but absorbs more moisture than other nylons."
        case .pa11: return "A flexible, bio-based Nylon with low moisture absorption and good chemical resistance."
        case .pa12: return "The most common Nylon for 3D printing. Strong, tough, with low moisture absorption. Great for functional parts."
        case .pa66: return "A stiffer and more heat-resistant Nylon compared to PA6, used for durable mechanical parts."
        case .cpe: return "A family of strong and dimensionally stable materials (including PETG) known for chemical resistance."
        case .tpe: return "A general class of soft, rubbery materials. Softer and more flexible than TPU."
        case .hips: return "A lightweight material often used as a dissolvable support material for ABS prints (dissolves in Limonene)."
        case .pha: return "A biodegradable material similar to PLA but with better toughness and flexibility."
        case .pet: return "The same plastic used in water bottles. Strong and food-safe, but less common for printing than PETG."
        case .pei: return "A high-performance material (also known as Ultem) with excellent thermal and mechanical properties."
        case .pbt: return "An engineering polymer with good heat resistance and electrical insulation properties."
        case .pvb: return "Easy to print and can be chemically smoothed with isopropyl alcohol for a glossy finish."
        case .pva: return "A water-soluble filament used exclusively as a support material for complex prints."
        case .pekk: return "An ultra-high-performance polymer with exceptional heat, chemical, and mechanical properties for industrial use."
        case .peek: return "An ultra-high-performance polymer with exceptional mechanical, thermal, and chemical resistance. Used in demanding aerospace, medical, and industrial applications."
        case .bvoh: return "A water-soluble support material that often dissolves faster and is easier to print than PVA."
        case .tpc: return "A flexible, TPE-like material with good thermal and chemical resistance."
        case .pps: return "A high-performance polymer known for its thermal stability and chemical resistance, often used in automotive and electronics."
        case .ppsu: return "A high-performance material with excellent heat and chemical resistance, often used in medical applications."
        case .pvc: return "Strong and durable but rarely used in 3D printing due to the release of toxic fumes."
        case .peba: return "A flexible and lightweight TPE known for its excellent energy return, used in sports equipment."
        case .pvdf: return "High-performance polymer with excellent resistance to chemicals and UV light."
        case .ppa: return "A high-performance Nylon with superior strength, stiffness, and heat resistance compared to standard Nylons."
        case .pcl: return "A biodegradable polyester with a very low melting point (~60 °C), allowing it to be reshaped by hand in hot water."
        case .pes: return "A high-temperature, amorphous polymer with good chemical and hydrolytic stability."
        case .pmma: return "A rigid, transparent material also known as acrylic. Offers good optical clarity."
        case .pom: return "A low-friction, rigid material also known as Delrin. Excellent for gears, bearings, and moving parts."
        case .ppe: return "An engineering thermoplastic with good temperature resistance and dimensional stability, often used in blends."
        case .ps: return "A lightweight and brittle material. Not commonly used in its pure form for 3D printing."
        case .psu: return "A high-temperature material with good thermal stability and chemical resistance."
        case .tpi: return "An ultra-high-performance polymer with one of the highest glass transition temperatures and excellent thermal stability."
        case .sbs: return "A flexible, rubber-like material (a type of TPE) known for good durability. It is relatively easy to print for a flexible filament."
        }
    }
}
