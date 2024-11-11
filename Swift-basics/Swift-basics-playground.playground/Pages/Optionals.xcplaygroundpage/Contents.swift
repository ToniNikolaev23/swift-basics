import Foundation

// There is always a value and it is a Boolean
let myBool: Bool = false

// We don't know if there is a value, but if there is, it is a boolean
var myOtherBool: Bool? = nil

//print(myOtherBool)
//
//myOtherBool = true
//
//print(myOtherBool)

// nil coalescing operator

let newValue: Bool? = myOtherBool

let newValue2: Bool = myOtherBool ?? false

print("New value 2: \(newValue2.description)")

var myString: String? = nil

let newString = myString ?? "Some default value"


var userIsPremium: Bool? = nil

func checkIfUserIsPremium() -> Bool? {
    return userIsPremium
}

func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkIfUserIsPremium2()


func checkIfUserIsPremium3() -> Bool {
    if let newValue = userIsPremium {
        // Here we have access to the non optional value
        return newValue
    } else {
        return false
    }
}

func checkIfUserIsPremium4() -> Bool {
    if let userIsPremium {
        return userIsPremium
    }
    return false
}

// Guard

func checkIfUserIsPremium5() -> Bool {
    //Make sure there is a value
    guard let newValue = userIsPremium else {
        return false
    }
    
    return newValue
}

func checkIfUserIsPremium6() -> Bool {
    guard let userIsPremium else {
        return false
    }
    
    return userIsPremium
}

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

func checkIfUserIsSetUp() -> Bool {
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
     return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
     )
    } else {
        return false
    }
}

func checkIfUserIsSetUp2() -> Bool {
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        return false
    }
    
    return getUserStatus(
       userIsNew: userIsNew,
       userDidCompleteOnboarding: userDidCompleteOnboarding,
       userFavoriteMovie: userFavoriteMovie
    )
}


func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    return false
}

// Nested IF-LET

func checkIfUserIsSetUp3() -> Bool {
    
    if let userIsNew {
        // userIsNew == Bool
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboarding == Bool
            if let userFavoriteMovie {
                //UserFavoriteMovie == Bool
                return getUserStatus(
                   userIsNew: userIsNew,
                   userDidCompleteOnboarding: userDidCompleteOnboarding,
                   userFavoriteMovie: userFavoriteMovie
                )
            } else {
                //UserFavoriteMovie == nil
                return false
            }
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
    } else {
        // userIsNew == nil
        return false
    }
}

// Nested Guard - layerd guard


func checkIfUserIsSetUp4() -> Bool {
    
    guard let userIsNew else {
        // userIsNew == nil
        return false
    }
    
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return false
    }
    
    guard let userFavoriteMovie else {
        // userFavoriteMovie == nil
        return false
    }

    return getUserStatus(
       userIsNew: userIsNew,
       userDidCompleteOnboarding: userDidCompleteOnboarding,
       userFavoriteMovie: userFavoriteMovie
    )
}

// Optional Chaining

func getUsername() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    let username: String? = getUsername()
    
    let count: Int = username?.count ?? 0
    
    let title: String = getTitle()
    
    let count2 = title.count
    
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
    print(firstCharacterIsLowercased)
    
    //explicitly unwrap optional
    let count3: Int = username!.count
}

getUserData()


// safely unwrap an option
// nil coalscing
// if-let
// guard

//explicitly unwrap optional

