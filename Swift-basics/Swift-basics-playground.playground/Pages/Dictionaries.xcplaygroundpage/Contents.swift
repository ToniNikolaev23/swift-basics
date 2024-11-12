import Foundation

var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]

print(finalFruits)

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]

print(fruitsSet)

var myFirstDictionary: [String:Bool] = [
    "Apple": true, 
    "Orange": false
]

let item = myFirstDictionary["Orange"]

var anotherDictionary: [Int: String] = [
    0: "Apple",
    5: "Banana"
]

let item2 = anotherDictionary[1]

anotherDictionary[10] = "Mango"

print(anotherDictionary)

struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}


var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 10),
    PostModel(id: "def678", title: "Post 2", likeCount: 20),
    PostModel(id: "xyz987", title: "Post 3", likeCount: 15),
]

if postArray.indices.contains(1) {
    let item = postArray[1]
}


var postDict: [String: PostModel] = [
    "abc123": PostModel(id: "abc123", title: "Post 1", likeCount: 10),
    "def678": PostModel(id: "def678", title: "Post 2", likeCount: 20),
    "xyz987": PostModel(id: "xyz987", title: "Post 3", likeCount: 15)
]

let myNewItem = postDict["def678"]
