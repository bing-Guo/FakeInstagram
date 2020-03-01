import Foundation

class ActionViewModel: PostPageProtocol {
    private let postID: String
    private let isFavorite: Bool
    private let isMark: Bool
    
    init(postID: String, isFavorite: Bool, isMark: Bool) {
        self.postID = postID
        self.isFavorite = isFavorite
        self.isMark = isMark
    }
}
