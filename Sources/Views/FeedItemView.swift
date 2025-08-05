import SwiftUI

struct FeedItemView: View {
    let item: FeedItem

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(item.user.name).font(.headline)
            Text(item.content).font(.body)
            if let imageURL = item.imageURL {
                AsyncImage(url: imageURL) { image in
                    image.resizable().scaledToFit()
                } placeholder: {
                    ProgressView()
                }
            }
        }
        .padding()
    }
}