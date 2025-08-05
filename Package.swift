// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SocialFeed",
    platforms: [.macOS(.v12)],
    products: [
        .executable(name: "SocialFeed", targets: ["SocialFeed"])
    ],
    targets: [
        .target(
            name: "SocialFeed",
            dependencies: []
        )
    ]
)