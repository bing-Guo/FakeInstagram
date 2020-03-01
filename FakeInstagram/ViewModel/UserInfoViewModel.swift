import Foundation

class UserInfoViewModel: PostPageProtocol {
    private let author: User
    
    init(_ author: User) {
        self.author = author
    }
    
    func getAuthorNickname() -> String {
        return self.author.nickname
    }
    
    func getAuthorID() -> String {
        return self.author.id
    }
    
    func getAuthorHeadShot() -> String {
        return self.author.headShot
    }
}
