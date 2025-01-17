import XCTest
import Vapor
@testable import GHActionsProxy // Replace with the actual module name

final class OpenAPIRouteFactoryTests: XCTestCase {
    
    // Mock implementation conforming to APIProtocol
    final class MockAPI: APIProtocol {
        func listWorkflows(_ input: Operations.ListWorkflows.Input) async throws -> Operations.ListWorkflows.Output {
            return .ok(.init(
                workflows: [
                    Operations.ListWorkflows.Output.Workflows(id: "1", name: "Workflow1", path: "/path/to/workflow")
                ]
            ))
        }

        func getWorkflow(_ input: Operations.GetWorkflow.Input) async throws -> Operations.GetWorkflow.Output {
            return .ok(.init(
                id: "123",
                name: "Test Workflow",
                path: "/path/to/workflow"
            ))
        }

        func listWorkflowRuns(_ input: Operations.ListWorkflowRuns.Input) async throws -> Operations.ListWorkflowRuns.Output {
            return .ok(.init(
                runs: [
                    Operations.ListWorkflowRuns.Output.Runs(id: "run1", status: "completed")
                ]
            ))
        }

        func getWorkflowRun(_ input: Operations.GetWorkflowRun.Input) async throws -> Operations.GetWorkflowRun.Output {
            return .ok(.init(
                id: "456",
                status: "completed"
            ))
        }

        func downloadWorkflowLogs(_ input: Operations.DownloadWorkflowLogs.Input) async throws -> Operations.DownloadWorkflowLogs.Output {
            return .ok(.init())
        }
    }

    func testRouteConfiguration() throws {
        let app = Application(.testing)
        defer { app.shutdown() }

        let api = MockAPI()

        // Use the generated `Server` type to register routes
        try Server(api: api).registerHandlers(on: app)

        // Test routes with sample requests and ensure correct status codes
        try app.test(.GET, "/repos/owner/repo/actions/workflows") { res in
            XCTAssertEqual(res.status, .ok)
        }

        try app.test(.GET, "/repos/owner/repo/actions/workflows/123") { res in
            XCTAssertEqual(res.status, .ok)
        }

        try app.test(.GET, "/repos/owner/repo/actions/runs") { res in
            XCTAssertEqual(res.status, .ok)
        }

        try app.test(.GET, "/repos/owner/repo/actions/runs/456") { res in
            XCTAssertEqual(res.status, .ok)
        }

        try app.test(.GET, "/repos/owner/repo/actions/runs/456/logs") { res in
            XCTAssertEqual(res.status, .ok)
        }
    }
}
