// File: Sources/Handlers/DownloadWorkflowLogsHandler.swift
// Purpose: Handles API requests for downloading workflow logs.

import Vapor

struct DownloadWorkflowLogsHandler: APIProtocol {
    let service = DownloadWorkflowLogsService()

    func downloadWorkflowLogs(
        _ input: Operations.downloadWorkflowLogs.Input
    ) async throws -> Operations.downloadWorkflowLogs.Output {
        // Construct the input required by the service.
        let runId = String(input.path.run_id) // Ensure input matches expected type.

        // Call the service to fetch logs for the workflow run.
        let logs = try await service.fetchWorkflowLogs(runId: runId)

        // Return the logs wrapped in the required output format.
        return .ok(.init(logs: logs)) // Matches API protocol output expectations.
    }
}
