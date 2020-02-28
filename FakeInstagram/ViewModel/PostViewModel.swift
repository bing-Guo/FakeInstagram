import Foundation

protocol PostPageProtocol {
    
}

class StoryViewModel: PostPageProtocol {
    var stories: [Story]
    
    init(_ stories: [Story]) {
        self.stories = stories
    }
}

class PostViewModel: PostPageProtocol {
    var author: User
    var imageUrl: String
    var content: String
    
    init(author: User, imageUrl: String, content: String) {
        self.author = author
        self.imageUrl = imageUrl
        self.content = content
    }
}

class UserInfoViewModel: PostPageProtocol {
    var author: User
    
    init(_ author: User) {
        self.author = author
    }
}

