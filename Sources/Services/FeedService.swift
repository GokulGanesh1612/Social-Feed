import Combine
import Foundation

class FeedService {
    static let shared = FeedService()

    func fetchFeed() -> AnyPublisher<[FeedItem], Error> {
        let mockUser = User(id: UUID(), name: "Gokul", avatarURL: URL(string: "https://example.com/avatar.png")!)
        let items = [
            FeedItem(id: UUID(), user: mockUser, content: "Hello world!", imageURL: nil, videoPreviewURL: nil, type: .text, timestamp: Date()),
            FeedItem(id: UUID(), user: mockUser, content: "Check out this image!", imageURL: URL(string: "https://example.com/image.jpg"), videoPreviewURL: nil, type: .image, timestamp: Date())
        ]
        return Just(items)
            .setFailureType(to: Error.self)
            .delay(for: .seconds(1), scheduler: DispatchQueue.global())
            .eraseToAnyPublisher()
    }
}