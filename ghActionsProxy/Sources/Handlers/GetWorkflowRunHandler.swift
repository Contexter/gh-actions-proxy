// File: Sources/Handlers/GetWorkflowRunHandler.swift
// Purpose: Handles API requests for getting details of a workflow run.

import Vapor

struct GetWorkflowRunHandler: APIProtocol {
    let service = GetWorkflowRunService()

    func getWorkflowRun(_ input: Operations.getWorkflowRun.Input) async throws -> Operations.getWorkflowRun.Output {
        // Call the service to fetch workflow run details.
        let run = try await service.fetchWorkflowRunDetails(runId: input.runId)
        return .ok(run)
    }
}
