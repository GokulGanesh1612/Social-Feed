# 🐦 SocialFeed — Twitter-like MVVM Feed App

A scalable, modular social media feed built using **Swift**, **MVVM architecture**, and **Combine**. This project simulates a Twitter-style feed with text, image, and video posts, showcasing clean separation of concerns, reactive state management, and UI modularity—without third-party libraries.

---

## 🚀 Features

- **MVVM Architecture**
  - Clear separation between Model, ViewModel, and View
  - Fully testable ViewModels with no UI dependencies
  - Reactive data flow using Combine

- **Feed Functionality**
  - Display posts with text, images, and user info
  - Pull-to-refresh and infinite scrolling
  - Offline support (optional extension)

- **UI Modularity**
  - Reusable feed item components
  - Support for multiple post types (text, image, video preview)
  - Plugin system for custom feed items
  - Dynamic height calculation for variable content

---

## 🧠 Architecture Overview

- **Models**: `User`, `FeedItem`, `FeedItemType`
- **Services**: `FeedService` (mock API), `NetworkMonitor`, `CacheManager`
- **ViewModels**: `FeedViewModel` with Combine publishers
- **Views**: `FeedView`, `FeedItemView` (modular components)
- **Plugins**: Extendable system for rendering custom feed items
