import Foundation

struct User {
    var id: String
    var nickname: String
    var headShot: String
    
    init(id: String, nickname: String, headShot: String) {
        self.id = id
        self.nickname = nickname
        self.headShot = headShot
    }
}
