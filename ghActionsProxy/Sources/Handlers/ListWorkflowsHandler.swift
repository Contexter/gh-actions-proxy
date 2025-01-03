// File: Sources/Handlers/ListWorkflowsHandler.swift
// Purpose: Handles API requests to list workflows for a repository.

import Vapor

struct ListWorkflowsHandler: APIProtocol {
    let service = ListWorkflowsService()

    func listWorkflows(
        _ input: Operations.listWorkflows.Input
    ) async throws -> Operations.listWorkflows.Output {
        // Construct the input parameters required by the service.
        let workflows = try await service.fetchWorkflows(
            owner: input.path.owner,
            repo: input.path.repo
        )

        // Return the workflows in the required output format.
        let output = Operations.listWorkflows.Output.ok(
            .init(totalCount: workflows.count, workflows: workflows)
        )
        return output
    }
}
