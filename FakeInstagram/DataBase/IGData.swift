import Foundation

class IGData {
    private static var pikachu = User(id: "pikachu", nickname: "皮卡丘", headShot: "pikachu")
    private static var jigglypuff = User(id: "jigglypuff", nickname: "胖丁", headShot: "jigglypuff")
    
    private static var stories: [Story] {
        return [
            Story(author: pikachu, imageUrl: ""),
            Story(author: jigglypuff, imageUrl: ""),
            Story(author: pikachu, imageUrl: ""),
            Story(author: jigglypuff, imageUrl: ""),
            Story(author: pikachu, imageUrl: ""),
            Story(author: jigglypuff, imageUrl: ""),
            Story(author: pikachu, imageUrl: ""),
            Story(author: jigglypuff, imageUrl: "")
        ]
    }
    
    static var share: [PostPageProtocol] {
        return [
            StoryViewModel(stories),
            UserInfoViewModel(pikachu),
            PostViewModel(author: pikachu, imageUrl: "concert-1", content: "High"),
            UserInfoViewModel(pikachu),
            PostViewModel(author: jigglypuff, imageUrl: "concert-2", content: "High ~ ~ ~")
        ]
    }
    
}
