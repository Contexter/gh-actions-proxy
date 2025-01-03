// File: ghActionsProxy/Sources/Routes/routes.swift
// Purpose: Registers routes for the API endpoints.

import Vapor
import OpenAPIVapor

func routes(_ app: Application) throws {
    let transport = VaporTransport(routesBuilder: app)
    let handler = ListWorkflowsHandler()

    // Register handler for 'listWorkflows'
    try handler.registerHandlers(on: transport)

    app.logger.info("Routes registered successfully.")
}

