// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "GHActionsProxy",
    platforms: [
        .macOS(.v10_15)
    ],
    dependencies: [
        // OpenAPI Generator
        .package(url: "https://github.com/apple/swift-openapi-generator.git", from: "1.5.0"),
        .package(url: "https://github.com/apple/swift-openapi-runtime.git", from: "1.5.0"),
        .package(url: "https://github.com/swift-server/swift-openapi-vapor.git", from: "1.0.1"),

        // Vapor
        .package(url: "https://github.com/vapor/vapor.git", from: "4.89.0"),

        // Fluent and SQLite Driver
        .package(url: "https://github.com/vapor/fluent.git", from: "4.9.0"),
        .package(url: "https://github.com/vapor/fluent-sqlite-driver.git", from: "4.3.0"),

        // Typesense Client
        .package(url: "https://github.com/typesense/typesense-swift.git", from: "1.0.0"),
        
        // Algorithms
        .package(url: "https://github.com/apple/swift-algorithms.git", from: "1.0.0"),

        // HTTP Types
        .package(url: "https://github.com/apple/swift-http-types.git", from: "1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "GHActionsProxy",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIVapor", package: "swift-openapi-vapor"),
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Fluent", package: "fluent"),
                .product(name: "FluentSQLiteDriver", package: "fluent-sqlite-driver"),
                .product(name: "Typesense", package: "typesense-swift"),
                .product(name: "Algorithms", package: "swift-algorithms")
            ],
            path: "Sources",
            exclude: [
                ".build/checkouts/swift-algorithms/Sources/Algorithms/Documentation.docc" // Exclude unhandled .docc file
            ],
            plugins: [
                .plugin(name: "OpenAPIGenerator", package: "swift-openapi-generator")
            ]
        ),
        .testTarget(
            name: "GHActionsProxyTests",
            dependencies: [
                "GHActionsProxy",
                .product(name: "XCTVapor", package: "vapor"),
                .product(name: "HTTPTypes", package: "swift-http-types") // Correct version range
            ],
            path: "Tests/GHActionsProxyTests",
            exclude: [
                "HelloWorldTests.swift.save" // Exclude any temporary or unwanted files
            ]
        )
    ]
)
