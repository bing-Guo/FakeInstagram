import Foundation

struct Post: Codable {
    let postID: String
    let author: User
    let postText: String
    let postImage: [String]
    let likeCount: Int
    let isFavorite: Bool
    let isMark: Bool
    
    enum CodingKeys: String, CodingKey {
        case postID = "id"
        case author
        case postText = "text"
        case postImage = "image"
        case likeCount
        case isFavorite
        case isMark
    }
}
