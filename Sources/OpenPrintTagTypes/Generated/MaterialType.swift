// Auto-generated from OpenPrintTag spec — do not edit manually
// Regenerate: python3 Scripts/generate_types.py

import Foundation

/// Material type classifications
public enum MaterialType: Int, Sendable, CaseIterable, Codable {
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
    case obc = 40
    case eva = 41

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
        case .obc: return "OBC"
        case .eva: return "EVA"
        }
    }

    public var fullName: String {
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
        case .obc: return "Olefin Block Copolymer"
        case .eva: return "Ethylene Vinyl Acetate"
        }
    }

    public var materialClass: MaterialClass {
        switch self {
        case .pla: return .FFF
        case .petg: return .FFF
        case .tpu: return .FFF
        case .abs: return .FFF
        case .asa: return .FFF
        case .pc: return .FFF
        case .pctg: return .FFF
        case .pp: return .FFF
        case .pa6: return .FFF
        case .pa11: return .FFF
        case .pa12: return .FFF
        case .pa66: return .FFF
        case .cpe: return .FFF
        case .tpe: return .FFF
        case .hips: return .FFF
        case .pha: return .FFF
        case .pet: return .FFF
        case .pei: return .FFF
        case .pbt: return .FFF
        case .pvb: return .FFF
        case .pva: return .FFF
        case .pekk: return .FFF
        case .peek: return .FFF
        case .bvoh: return .FFF
        case .tpc: return .FFF
        case .pps: return .FFF
        case .ppsu: return .FFF
        case .pvc: return .FFF
        case .peba: return .FFF
        case .pvdf: return .FFF
        case .ppa: return .FFF
        case .pcl: return .FFF
        case .pes: return .FFF
        case .pmma: return .FFF
        case .pom: return .FFF
        case .ppe: return .FFF
        case .ps: return .FFF
        case .psu: return .FFF
        case .tpi: return .FFF
        case .sbs: return .FFF
        case .obc: return .FFF
        case .eva: return .FFF
        }
    }
}
