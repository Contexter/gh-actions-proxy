// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "GhActionsProxy",
    platforms: [
       .macOS(.v13)
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "4.110.1"),
        // 🔵 Non-blocking, event-driven networking for Swift. Used for custom executors
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.65.0"),
        // ✅ Added Monorepo for custom APIs
        .package(url: "https://github.com/Contexter/GithubProxyMonorepo.git", from: "1.0.0"),
        // 🐙 Octokit.swift for GitHub API interactions
        .package(url: "https://github.com/nerdishbynature/octokit.swift.git", from: "0.10.0")
    ],
    targets: [
        .executableTarget(
            name: "App",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "NIOCore", package: "swift-nio"),
                .product(name: "NIOPosix", package: "swift-nio"),
                // ✅ Added "Actions" from Monorepo
                .product(name: "Actions", package: "GithubProxyMonorepo"),
                .product(name: "OctoKit", package: "octokit.swift")
            ],
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "AppTests",
            dependencies: [
                .target(name: "App"),
                .product(name: "VaporTesting", package: "vapor")
            ],
            swiftSettings: swiftSettings
        )
    ],
    swiftLanguageModes: [.v5]
)

var swiftSettings: [SwiftSetting] { [
    .enableUpcomingFeature("DisableOutwardActorInference"),
    .enableExperimentalFeature("StrictConcurrency")
] }
