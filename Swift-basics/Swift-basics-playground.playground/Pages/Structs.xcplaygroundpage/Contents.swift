import Foundation

// Structs are fast!
// Structs are stored in the Stack (memory)
// Objects in the Stack are Value types
// Value types are copied and mutated

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    //Structs have and implicit init
    
//    init(title: String, dateCreated: Date) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
//    init(title: String, dateCreated: Date = .now) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
    init(title: String, dateCreated: Date? , isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }
}

//let myObject: String = "Hello, world!"
//
////let myQuiz: Quiz = Quiz(title: "Quiz", dateCreated: .now)
////let myQuiz: Quiz = Quiz(title: "Quiz")
//let myQuiz: Quiz = Quiz(title)
//
//print(myQuiz.title)
//print(myQuiz.dateCreated)


// -----------------------------

// "Immutable struct" -> all let
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Toni", isPremium: false)

func markUserAsPremium() {
    print(user1);
    
    user1 = UserModel(name: user1.name, isPremium: true)
    
    print(user1)
}

//markUserAsPremium()

// --------------------
// "Muttable struct"
struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Toni", isPremium: false)

func markUserAsPremium2() {
    print(user2)
    user2.isPremium = true
    print(user2)
}

markUserAsPremium2()

// --------------------

// immutable
struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium(newValue: Bool) -> UserModel3 {
        UserModel3(name: name, isPremium: newValue)
    }
}

var user3: UserModel3 = UserModel3(name: "Toni Stoyanov", isPremium: false)
user3 = user3.markUserAsPremium(newValue: true)

print(user3)

// --------------------

struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func markUserAsPremium(newValue: Bool) {
        isPremium = newValue
    }
}

var user4 = UserModel4(name: "Toni", isPremium: false)
user4.markUserAsPremium(newValue: true)
