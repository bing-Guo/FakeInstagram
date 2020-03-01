import Foundation

class PostTextViewModel: PostPageProtocol {
    private let author: User
    private let postText: String
    private let likeCount: Int
    
    init(author: User, postText: String, likeCount: Int) {
        self.author = author
        self.postText = postText
        self.likeCount = likeCount
    }
    
    func getLikeCount() -> Int {
        return self.likeCount
    }
    
    func getPostText() -> String {
        return self.postText
    }
    
    func getAuthorID() -> String {
        return self.author.id
    }
}
