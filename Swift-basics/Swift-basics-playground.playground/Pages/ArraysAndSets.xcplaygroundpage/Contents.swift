import Foundation

// Arrays, Sets

var myTitle: String = "Hello, world"
var myTitle2: String = "Hello, world!!!"

// Tuple

func doSomething(value: (title1: String, title2: String)) {
    
}

// Custom data model
struct TitlesModel {
    let title1: String
    let title2: String
}

// -------------------------
let apple: String = "Apple"
let orange: String = "Orange"

let fruits: [String] = [apple, orange]
let fruits2: Array<String> = [apple, orange]

let myBools: [Bool] = [true, false, true, true]

print(fruits)

var fruitsArray: [String] = ["Apple", "Orange", "Banana", "Mango"]

if let firstItem = fruitsArray.first {
    print(firstItem)
}

fruitsArray.append("Banana")
fruitsArray.append(contentsOf: ["Test", "Test 2"])
//let firstIndex = fruitsArray.indices.first
//let lastIndex = fruitsArray.indices.last

if fruitsArray.indices.contains(4) {
    let item = fruitsArray[4]
}
print(fruitsArray)
fruitsArray.insert("Insert", at: 1)
print(fruitsArray)

fruitsArray.remove(at: 1)

print(fruitsArray)

struct ProductModel {
    let title: String
    let price: Int
}

var myProducts = [ProductModel(title: "Product 1", price: 50), ProductModel(title: "Product 2", price: 100)]

print(myProducts)
