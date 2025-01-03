// File: Sources/Handlers/GetWorkflowHandler.swift
// Purpose: Handles API requests for getting workflow details.

import Vapor

struct GetWorkflowHandler: APIProtocol {
    let service = GetWorkflowService()

    func getWorkflow(_ input: Operations.getWorkflow.Input) async throws -> Operations.getWorkflow.Output {
        // Call the service to fetch workflow details.
        let workflow = try await service.fetchWorkflowDetails(workflowId: input.workflowId)
        return .ok(workflow)
    }
}
