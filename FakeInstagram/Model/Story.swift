import Foundation

struct Story {
    var author: User
    var imageUrl: String
    
    init(author: User, imageUrl: String) {
        self.author = author
        self.imageUrl = imageUrl
    }
}
