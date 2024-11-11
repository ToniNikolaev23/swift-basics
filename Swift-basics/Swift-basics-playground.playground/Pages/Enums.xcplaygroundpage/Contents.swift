import Foundation

// Enums is the same as Struct except we know all cases in runtime

struct CarModel {
    let brand: CarBrandOption
    let model: String
}

struct CarBrand {
    let title: String
}

// Enums are stored in memory the same way as a Struct, but we cannot mutate them
enum CarBrandOption {
    case ford
    case toyota
    case bmw
    
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .bmw:
            return "BMW"
        default:
            return "Default"
        }
        
//        if self == .ford {
//            return "Ford"
//        } else if self == .toyota {
//            return "Toyota"
//        } else {
//            return "Default"
//        }
    }
}

//var car1: CarModel = CarModel(brand: "Ford", model: "Fiesta")
//var car2: CarModel = CarModel(brand: "coffee", model: "Focus")
//var car3: CarModel = CarModel(brand: "Toyota", model: "Camry")

//var brand1 = CarBrand(title: "Ford")
//var brand2 = CarBrand(title: "BMW")
//
//var car1: CarModel = CarModel(brand: brand1, model: "Fiesta")
//var car2: CarModel = CarModel(brand: brand1, model: "Focus")
//var car3: CarModel = CarModel(brand: brand2, model: "XM")

var car1 = CarModel(brand: .ford, model: "Fiesta")
