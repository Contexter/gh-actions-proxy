// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "GhActionsProxy",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        // Vapor for server-side Swift
        .package(url: "https://github.com/vapor/vapor.git", from: "4.110.1"),
        // Swift-NIO for networking
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.65.0"),
        // Actions module from Monorepo
        .package(url: "https://github.com/Contexter/GithubProxyMonorepo.git", from: "1.0.0"),
        // Octokit.swift for GitHub API
        .package(url: "https://github.com/nerdishbynature/octokit.swift.git", from: "0.10.0")
    ],
    targets: [
        .executableTarget(
            name: "App",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "NIOCore", package: "swift-nio"),
                .product(name: "NIOPosix", package: "swift-nio"),
                .product(name: "Actions", package: "GithubProxyMonorepo"),
                .product(name: "OctoKit", package: "octokit.swift")
            ]
        ),
        .testTarget(
            name: "AppTests",
            dependencies: [
                .target(name: "App"),
                .product(name: "XCTVapor", package: "vapor")
            ]
        )
    ]
)
