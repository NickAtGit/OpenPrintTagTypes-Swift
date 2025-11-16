// Auto-generated from OpenPrintTag spec/data/main_fields.yaml
// Do not edit manually - regenerate from YAML when spec updates

import Foundation

/// Field keys for the main section of OpenPrintTag CBOR data
public enum MainFieldKey: UInt64, Sendable, CaseIterable, Codable {
    case instanceUuid = 0
    case packageUuid = 1
    case materialUuid = 2
    case brandUuid = 3
    case gtin = 4
    case brandSpecificInstanceId = 5
    case brandSpecificPackageId = 6
    case brandSpecificMaterialId = 7
    case materialClass = 8
    case materialType = 9
    case materialName = 10
    case materialAbbreviation = 52
    case brandName = 11
    case writeProtection = 13
    case manufacturedDate = 14
    case countryOfOrigin = 55
    case expirationDate = 15
    case nominalNettoFullWeight = 16
    case actualNettoFullWeight = 17
    case nominalFullLength = 53
    case actualFullLength = 54
    case emptyContainerWeight = 18
    case primaryColor = 19
    case secondaryColor0 = 20
    case secondaryColor1 = 21
    case secondaryColor2 = 22
    case secondaryColor3 = 23
    case secondaryColor4 = 24
    case transmissionDistance = 27
    case tags = 28
    case density = 29
    case filamentDiameter = 30
    case shoreHardnessA = 31
    case shoreHardnessD = 32
    case minNozzleDiameter = 33
    case minPrintTemperature = 34
    case maxPrintTemperature = 35
    case preheatTemperature = 36
    case minBedTemperature = 37
    case maxBedTemperature = 38
    case minChamberTemperature = 39
    case maxChamberTemperature = 40
    case chamberTemperature = 41
    case containerWidth = 42
    case containerOuterDiameter = 43
    case containerInnerDiameter = 44
    case containerHoleDiameter = 45
    case viscosity18C = 46
    case viscosity25C = 47
    case viscosity40C = 48
    case viscosity60C = 49
    case containerVolumetricCapacity = 50
    case cureWavelength = 51

    /// Field name in snake_case format
    public var fieldName: String {
        switch self {
        case .instanceUuid: return "instance_uuid"
        case .packageUuid: return "package_uuid"
        case .materialUuid: return "material_uuid"
        case .brandUuid: return "brand_uuid"
        case .gtin: return "gtin"
        case .brandSpecificInstanceId: return "brand_specific_instance_id"
        case .brandSpecificPackageId: return "brand_specific_package_id"
        case .brandSpecificMaterialId: return "brand_specific_material_id"
        case .materialClass: return "material_class"
        case .materialType: return "material_type"
        case .materialName: return "material_name"
        case .materialAbbreviation: return "material_abbreviation"
        case .brandName: return "brand_name"
        case .writeProtection: return "write_protection"
        case .manufacturedDate: return "manufactured_date"
        case .countryOfOrigin: return "country_of_origin"
        case .expirationDate: return "expiration_date"
        case .nominalNettoFullWeight: return "nominal_netto_full_weight"
        case .actualNettoFullWeight: return "actual_netto_full_weight"
        case .nominalFullLength: return "nominal_full_length"
        case .actualFullLength: return "actual_full_length"
        case .emptyContainerWeight: return "empty_container_weight"
        case .primaryColor: return "primary_color"
        case .secondaryColor0: return "secondary_color_0"
        case .secondaryColor1: return "secondary_color_1"
        case .secondaryColor2: return "secondary_color_2"
        case .secondaryColor3: return "secondary_color_3"
        case .secondaryColor4: return "secondary_color_4"
        case .transmissionDistance: return "transmission_distance"
        case .tags: return "tags"
        case .density: return "density"
        case .filamentDiameter: return "filament_diameter"
        case .shoreHardnessA: return "shore_hardness_a"
        case .shoreHardnessD: return "shore_hardness_d"
        case .minNozzleDiameter: return "min_nozzle_diameter"
        case .minPrintTemperature: return "min_print_temperature"
        case .maxPrintTemperature: return "max_print_temperature"
        case .preheatTemperature: return "preheat_temperature"
        case .minBedTemperature: return "min_bed_temperature"
        case .maxBedTemperature: return "max_bed_temperature"
        case .minChamberTemperature: return "min_chamber_temperature"
        case .maxChamberTemperature: return "max_chamber_temperature"
        case .chamberTemperature: return "chamber_temperature"
        case .containerWidth: return "container_width"
        case .containerOuterDiameter: return "container_outer_diameter"
        case .containerInnerDiameter: return "container_inner_diameter"
        case .containerHoleDiameter: return "container_hole_diameter"
        case .viscosity18C: return "viscosity_18c"
        case .viscosity25C: return "viscosity_25c"
        case .viscosity40C: return "viscosity_40c"
        case .viscosity60C: return "viscosity_60c"
        case .containerVolumetricCapacity: return "container_volumetric_capacity"
        case .cureWavelength: return "cure_wavelength"
        }
    }
    
    /// Whether this field is required
    public var isRequired: Bool {
        switch self {
        case .materialClass: return true
        default: return false
        }
    }
    
    /// Whether this field is recommended
    public var isRecommended: Bool {
        switch self {
        case .gtin: return true
        case .materialType: return true
        case .materialName: return true
        case .brandName: return true
        case .manufacturedDate: return true
        case .nominalNettoFullWeight: return true
        case .actualNettoFullWeight: return true
        case .emptyContainerWeight: return true
        case .primaryColor: return true
        case .tags: return true
        case .density: return true
        case .minPrintTemperature: return true
        case .maxPrintTemperature: return true
        case .preheatTemperature: return true
        case .minBedTemperature: return true
        case .maxBedTemperature: return true
        default: return false
        }
    }
    
    /// Whether this field is deprecated
    public var isDeprecated: Bool {
        switch self {
        default: return false
        }
    }
}
