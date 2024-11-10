import Foundation

//var likeCount: Double = 5
//var commentCount: Double = 0
//var viewCount: Double = 100

// Addition
//likeCount = likeCount + 1
//likeCount += 1

// Subtraction
//likeCount -= 1

// Multiplication
//likeCount = like * 1.5
//likeCount *= 1.5

// Division
//likeCount = likeCount / 2
//likeCount /= 2

// Order of operations does matter!
// PEMDAS
//likeCount = (likeCount - 1) * 1.5

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

if likeCount == 5 {
    print("Post has 5 likes")
} else {
    print("Post does NOT have 5 likes")
}

if likeCount != 5 {
    print("Post does NOT have 5 likes.")
}

if likeCount > 5 {
    print("Post has greater than 5 likes.")
}

if likeCount >= 5 {
    print("Post has greater than or equal to 5 likes.")
}

if likeCount > 3 && commentCount > 0 {
    print("Post has greater than 4 likes and greater than 0 comments.")
}

if likeCount > 3 || commentCount > 0 {
    print("Post has greater than 3 likes OR greater than 0 comments.")
}

if likeCount > 5 {
    print("Like count > 5")
} else if likeCount > 2 {
    print("Like count > 2")
} else {
    print("else statement")
}
