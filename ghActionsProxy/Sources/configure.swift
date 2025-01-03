// File: ghActionsProxy/Sources/configure.swift
// Purpose: Configures the application and registers routes.

import Vapor

func configure(_ app: Application) throws {
    // Middleware setup
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    app.middleware.use(ErrorMiddleware.default(environment: app.environment))

    // Register routes
    try routes(app)

    app.logger.info("Application configured successfully.")
}
