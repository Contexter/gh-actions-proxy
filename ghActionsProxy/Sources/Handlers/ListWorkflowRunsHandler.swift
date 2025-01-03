// File: Sources/Handlers/ListWorkflowRunsHandler.swift
// Purpose: Handles API requests for listing workflow runs.

import Vapor

struct ListWorkflowRunsHandler: APIProtocol {
    let service = ListWorkflowRunsService()

    func listWorkflowRuns(_ input: Operations.listWorkflowRuns.Input) async throws -> Operations.listWorkflowRuns.Output {
        // Call the service to fetch workflow runs.
        let runs = try await service.fetchWorkflowRuns()
        return .ok(.init(totalCount: runs.count, workflowRuns: runs))
    }
}
