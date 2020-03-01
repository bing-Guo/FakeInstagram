import Foundation

class Database {
    private static var storiesResult: Stories {
        let decoder = JSONDecoder()
        let result: Stories
        
        let storiesJsonFilePath = Bundle.main.path(forResource: "stories", ofType: "json")
        guard let storiesPath = storiesJsonFilePath else { fatalError("The file path is not vaild.") }
        do {
            let storiesData = try Data(contentsOf: URL(fileURLWithPath: storiesPath), options: .alwaysMapped)
            result = try decoder.decode(Stories.self, from: storiesData)
        } catch {
            fatalError("\(error)")
        }
        
        return result
    }
    
    private static var postsResult: Posts {
        let decoder = JSONDecoder()
        let result: Posts
        
        let postsJsonFilePath = Bundle.main.path(forResource: "posts", ofType: "json")
        guard let postsPath = postsJsonFilePath else { fatalError("The file path is not vaild.") }
        do {
            let postsData = try Data(contentsOf: URL(fileURLWithPath: postsPath), options: .alwaysMapped)
            result = try decoder.decode(Posts.self, from: postsData)
        } catch {
            fatalError("\(error)")
        }
        
        return result
    }

    static var share: [PostPageProtocol] {
        var result = [PostPageProtocol]()
        
        result.append(StoryViewModel(storiesResult))
        
        for post in postsResult.posts {
            let user = User(id: post.author.id, nickname: post.author.nickname, headShot: post.author.headShot)
            
            result.append(UserInfoViewModel(user))
            result.append(PostImageViewModel(author: user, postImage: post.postImage))
            result.append(ActionViewModel(postID: post.postID, isFavorite: post.isFavorite, isMark: post.isMark))
            result.append(PostTextViewModel(author: user, postText: post.postText, likeCount: post.likeCount))
        }
        
        return result
    }
    
    private init() {}
}
