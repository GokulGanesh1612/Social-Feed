import Foundation

enum FeedItemType {
    case text, image, video
}

struct FeedItem: Identifiable {
    let id: UUID
    let user: User
    let content: String
    let imageURL: URL?
    let videoPreviewURL: URL?
    let type: FeedItemType
    let timestamp: Date
}