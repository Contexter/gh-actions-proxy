import XCTest
@testable import GHActionsProxy

// Mock implementation of APIProtocol
final class MockAPI: APIProtocol {
    func listWorkflows(_ input: Operations.ListWorkflows.Input) async throws -> Operations.ListWorkflows.Output {
        return .ok(.init())
    }

    func getWorkflow(_ input: Operations.GetWorkflow.Input) async throws -> Operations.GetWorkflow.Output {
        return .ok(.init())
    }

    func listWorkflowRuns(_ input: Operations.ListWorkflowRuns.Input) async throws -> Operations.ListWorkflowRuns.Output {
        return .ok(.init())
    }

    func getWorkflowRun(_ input: Operations.GetWorkflowRun.Input) async throws -> Operations.GetWorkflowRun.Output {
        return .ok(.init())
    }

    func downloadWorkflowLogs(_ input: Operations.DownloadWorkflowLogs.Input) async throws -> Operations.DownloadWorkflowLogs.Output {
        return .ok(.init())
    }
}

// Unit test class
final class GHActionsProxyTests: XCTestCase {
    private var mockAPI: MockAPI!

    override func setUp() {
        super.setUp()
        // Initialize the mock API before each test
        mockAPI = MockAPI()
    }

    override func tearDown() {
        // Clean up the mock API after each test
        mockAPI = nil
        super.tearDown()
    }

    func testListWorkflows() async throws {
        let input = Operations.ListWorkflows.Input(path: .init(owner: "owner", repo: "repo"))
        let output = try await mockAPI.listWorkflows(input)
        XCTAssertNotNil(output, "The output for listWorkflows should not be nil")
    }

    func testGetWorkflow() async throws {
        let input = Operations.GetWorkflow.Input(path: .init(owner: "owner", repo: "repo", workflowId: 123))
        let output = try await mockAPI.getWorkflow(input)
        XCTAssertNotNil(output, "The output for getWorkflow should not be nil")
    }

    func testListWorkflowRuns() async throws {
        let input = Operations.ListWorkflowRuns.Input(path: .init(owner: "owner", repo: "repo"))
        let output = try await mockAPI.listWorkflowRuns(input)
        XCTAssertNotNil(output, "The output for listWorkflowRuns should not be nil")
    }

    func testGetWorkflowRun() async throws {
        let input = Operations.GetWorkflowRun.Input(path: .init(owner: "owner", repo: "repo", runId: 123))
        let output = try await mockAPI.getWorkflowRun(input)
        XCTAssertNotNil(output, "The output for getWorkflowRun should not be nil")
    }

    func testDownloadWorkflowLogs() async throws {
        let input = Operations.DownloadWorkflowLogs.Input(path: .init(owner: "owner", repo: "repo", runId: 123))
        let output = try await mockAPI.downloadWorkflowLogs(input)
        XCTAssertNotNil(output, "The output for downloadWorkflowLogs should not be nil")
    }
}
