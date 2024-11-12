import Foundation

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavorite: Bool
    
//    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
//        MovieModel(title: title, genre: genre, isFavorite: newValue)
//    }
    
    mutating func updateFavoriteStatus(newValue: Bool) {
        isFavorite = newValue
    }
}

enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
    public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
    // Can read public, cannot set from outside
    private(set) var movie3 = MovieModel(title: "Avengers", genre: .action, isFavorite: false)
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus(newValue: isFavorite)
    }
}


let manager = MovieManager()
//manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
manager.movie1.updateFavoriteStatus(newValue: true)
// Not accessible
//manager.movie2.updateFavoriteStatus(newValue: true)
print(manager.movie1)


// Version 1

let movie1 = manager.movie1
manager.movie1.updateFavoriteStatus(newValue: true)

