import Foundation

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}


var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Toni", isPremium: true, order: 4),
    DatabaseUser(name: "Gosho", isPremium: false, order: 1),
    DatabaseUser(name: "Ivan", isPremium: true, order: 3),
    DatabaseUser(name: "Petkan", isPremium: false, order: 2),
    DatabaseUser(name: "Joe", isPremium: false, order: 1000),
]

var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
    user.isPremium
}

var allPremiumUsers2: [DatabaseUser] = allUsers.filter({ $0.isPremium })

//for user in allUsers {
//    if user.isPremium {
//        allPremiumUsers.append(user)
//    }
//}

//print(allPremiumUsers)

var orderedUsers: [DatabaseUser] = allUsers.sorted { user1, user2 in
    return user1.order < user2.order
}

var orderedUsers2: [DatabaseUser] = allUsers.sorted(by: {$0.order < $1.order})
print(orderedUsers)

var userNames: [String] = allUsers.map { user in
    return user.name
}

var userNames2: [String] = allUsers.map({$0.name})

print(userNames)
