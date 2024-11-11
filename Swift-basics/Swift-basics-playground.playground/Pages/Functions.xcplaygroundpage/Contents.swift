import Foundation

func myFirstFunction() {
    print("My first function called")
    mySecondFunction()
    myThirdFunction()
}

func mySecondFunction() {
    print("My second function called")
}

func myThirdFunction() {
    print("My third function called")
}

myFirstFunction()

func getUserName() -> String {
    let username: String = "Toni"
    return username
}

func checkIfUserIsPremium() -> Bool {
 return false
}


let name: String = getUserName()

func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = true
    var userProfileIsCreated: Bool = true
    
    let status: Bool = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfileIsCreated)

    if status == true {
        print("Show home screen")
    } else {
        print("Show onboarding screen")
    }
}


func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    return didCompleteOnboarding && profileIsCreated
}

showFirstScreen()
//
//doSomething()

//func doSomething() -> String {
//    var title: String = "Avengers"
//    if title == "Avengers" {
//        print("Marvel")
//    } else {
//        print("Not marvel")
//    }
//
//}
//
//func doSomethingElse() {
//    var title: String = "Avengers"
//    
//    guard title == "Avengers" else {
//        return
//    }
//}

let number1 = 5
let number2 = 8

func calculateNumbers() -> Int {
    return number1 + number2
}

func calculateNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)
print(result1, result2)

var calculatedNumber: Int {
    return number1 + number2
}
