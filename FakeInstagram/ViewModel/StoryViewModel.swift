import Foundation

class StoryViewModel: PostPageProtocol {
    private let stories: [Story]
    
    init(_ stories: Stories) {
        self.stories = stories.stories
    }
    
    func getStories() -> [Story] {
        return self.stories
    }
}
