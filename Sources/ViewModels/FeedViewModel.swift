import Combine
import Foundation

class FeedViewModel: ObservableObject {
    @Published var feedItems: [FeedItem] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?

    private var cancellables = Set<AnyCancellable>()

    func fetchFeed() {
        isLoading = true
        FeedService.shared.fetchFeed()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                self.isLoading = false
                if case let .failure(error) = completion {
                    self.errorMessage = error.localizedDescription
                }
            }, receiveValue: { items in
                self.feedItems = items
            })
            .store(in: &cancellables)
    }

    func refreshFeed() {
        fetchFeed()
    }

    func loadMore() {
        // Simulate infinite scroll
    }
}