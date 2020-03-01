import Foundation

class PostImageViewModel: PostPageProtocol {
    private let author: User
    private let postImage: [String]
    
    init(author: User, postImage: [String]) {
        self.author = author
        self.postImage = postImage
    }
    
    func getPostImage() -> String {
        return postImage[0]
    }
}



