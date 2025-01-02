// File: configure.swift
// Purpose: Sets up the application and configures the server using generated types.
// Note: Requires manual implementation of APIProtocol as defined in the generated code.

import Vapor
import OpenAPIVapor

func configure(_ app: Application) throws {
    // Register middleware
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    app.middleware.use(ErrorMiddleware.default(environment: app.environment))

    // Setup transport
    let transport = VaporTransport(routesBuilder: app)

    // Placeholder for custom API implementation
    // IMPORTANT: Replace 'CustomAPIImplementation' with your own implementation of APIProtocol.
    // Example:
    // struct CustomAPIImplementation: APIProtocol {
    //     func listWorkflows(_ input: Operations.listWorkflows.Input) async throws -> Operations.listWorkflows.Output {
    //         return .ok(.init())
    //     }
    // }
    let api = CustomAPIImplementation() // Replace this with your implementation

    // Register handlers dynamically based on OpenAPI specification
    try api.registerHandlers(on: transport)

    // Log success message
    app.logger.info("Routes registered successfully.")

    // Start the application
    try app.run()
}

// NOTE:
// - The generated code defines the APIProtocol that you must implement.
// - Replace 'CustomAPIImplementation' with your own implementation conforming to APIProtocol.
// - This approach separates protocol definition (from generated code) and logic implementation (custom code).
