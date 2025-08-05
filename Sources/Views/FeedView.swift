import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.feedItems) { item in
                    FeedItemView(item: item)
                        .onAppear {
                            if item == viewModel.feedItems.last {
                                viewModel.loadMore()
                            }
                        }
                }
            }
            .refreshable {
                viewModel.refreshFeed()
            }
            .navigationTitle("Feed")
        }
        .onAppear {
            viewModel.fetchFeed()
        }
    }
}