// Generated by swift-openapi-generator, do not modify.
@_spi(Generated) import OpenAPIRuntime
#if os(Linux)
@preconcurrency import struct Foundation.URL
@preconcurrency import struct Foundation.Data
@preconcurrency import struct Foundation.Date
#else
import struct Foundation.URL
import struct Foundation.Data
import struct Foundation.Date
#endif
/// A type that performs HTTP operations defined by the OpenAPI document.
internal protocol APIProtocol: Sendable {
    /// List Workflows
    ///
    /// Retrieves a list of workflows for the specified repository.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/workflows`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/get(listWorkflows)`.
    func listWorkflows(_ input: Operations.ListWorkflows.Input) async throws -> Operations.ListWorkflows.Output
    /// Get Workflow Details
    ///
    /// Retrieves details of a specific workflow.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/workflows/{workflow_id}`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/{workflow_id}/get(getWorkflow)`.
    func getWorkflow(_ input: Operations.GetWorkflow.Input) async throws -> Operations.GetWorkflow.Output
    /// List Workflow Runs
    ///
    /// Retrieves a list of workflow runs for the repository.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/runs`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/get(listWorkflowRuns)`.
    func listWorkflowRuns(_ input: Operations.ListWorkflowRuns.Input) async throws -> Operations.ListWorkflowRuns.Output
    /// Get Workflow Run Details
    ///
    /// Retrieves details of a specific workflow run.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/runs/{run_id}`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/get(getWorkflowRun)`.
    func getWorkflowRun(_ input: Operations.GetWorkflowRun.Input) async throws -> Operations.GetWorkflowRun.Output
    /// Download Workflow Logs
    ///
    /// Downloads the logs for a specific workflow run.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/runs/{run_id}/logs`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/logs/get(downloadWorkflowLogs)`.
    func downloadWorkflowLogs(_ input: Operations.DownloadWorkflowLogs.Input) async throws -> Operations.DownloadWorkflowLogs.Output
}

/// Convenience overloads for operation inputs.
extension APIProtocol {
    /// List Workflows
    ///
    /// Retrieves a list of workflows for the specified repository.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/workflows`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/get(listWorkflows)`.
    internal func listWorkflows(path: Operations.ListWorkflows.Input.Path) async throws -> Operations.ListWorkflows.Output {
        try await listWorkflows(Operations.ListWorkflows.Input(path: path))
    }
    /// Get Workflow Details
    ///
    /// Retrieves details of a specific workflow.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/workflows/{workflow_id}`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/{workflow_id}/get(getWorkflow)`.
    internal func getWorkflow(path: Operations.GetWorkflow.Input.Path) async throws -> Operations.GetWorkflow.Output {
        try await getWorkflow(Operations.GetWorkflow.Input(path: path))
    }
    /// List Workflow Runs
    ///
    /// Retrieves a list of workflow runs for the repository.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/runs`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/get(listWorkflowRuns)`.
    internal func listWorkflowRuns(path: Operations.ListWorkflowRuns.Input.Path) async throws -> Operations.ListWorkflowRuns.Output {
        try await listWorkflowRuns(Operations.ListWorkflowRuns.Input(path: path))
    }
    /// Get Workflow Run Details
    ///
    /// Retrieves details of a specific workflow run.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/runs/{run_id}`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/get(getWorkflowRun)`.
    internal func getWorkflowRun(path: Operations.GetWorkflowRun.Input.Path) async throws -> Operations.GetWorkflowRun.Output {
        try await getWorkflowRun(Operations.GetWorkflowRun.Input(path: path))
    }
    /// Download Workflow Logs
    ///
    /// Downloads the logs for a specific workflow run.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/runs/{run_id}/logs`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/logs/get(downloadWorkflowLogs)`.
    internal func downloadWorkflowLogs(path: Operations.DownloadWorkflowLogs.Input.Path) async throws -> Operations.DownloadWorkflowLogs.Output {
        try await downloadWorkflowLogs(Operations.DownloadWorkflowLogs.Input(path: path))
    }
}

/// Server URLs defined in the OpenAPI document.
internal enum Servers {
    /// Proxy server for GitHub Actions API.
    internal enum Server1 {
        /// Proxy server for GitHub Actions API.
        internal static func url() throws -> Foundation.URL {
            try Foundation.URL(
                validatingOpenAPIServerURL: "https://actions.pm.fountain.coach",
                variables: []
            )
        }
    }
    /// Proxy server for GitHub Actions API.
    @available(*, deprecated, renamed: "Servers.Server1.url")
    internal static func server1() throws -> Foundation.URL {
        try Foundation.URL(
            validatingOpenAPIServerURL: "https://actions.pm.fountain.coach",
            variables: []
        )
    }
}

/// Types generated from the components section of the OpenAPI document.
internal enum Components {
    /// Types generated from the `#/components/schemas` section of the OpenAPI document.
    internal enum Schemas {}
    /// Types generated from the `#/components/parameters` section of the OpenAPI document.
    internal enum Parameters {}
    /// Types generated from the `#/components/requestBodies` section of the OpenAPI document.
    internal enum RequestBodies {}
    /// Types generated from the `#/components/responses` section of the OpenAPI document.
    internal enum Responses {}
    /// Types generated from the `#/components/headers` section of the OpenAPI document.
    internal enum Headers {}
}

/// API operations, with input and output types, generated from `#/paths` in the OpenAPI document.
internal enum Operations {
    /// List Workflows
    ///
    /// Retrieves a list of workflows for the specified repository.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/workflows`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/get(listWorkflows)`.
    internal enum ListWorkflows {
        internal static let id: Swift.String = "listWorkflows"
        internal struct Input: Sendable, Hashable {
            /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/workflows/GET/path`.
            internal struct Path: Sendable, Hashable {
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/workflows/GET/path/owner`.
                internal var owner: Swift.String
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/workflows/GET/path/repo`.
                internal var repo: Swift.String
                /// Creates a new `Path`.
                ///
                /// - Parameters:
                ///   - owner:
                ///   - repo:
                internal init(
                    owner: Swift.String,
                    repo: Swift.String
                ) {
                    self.owner = owner
                    self.repo = repo
                }
            }
            internal var path: Operations.ListWorkflows.Input.Path
            /// Creates a new `Input`.
            ///
            /// - Parameters:
            ///   - path:
            internal init(path: Operations.ListWorkflows.Input.Path) {
                self.path = path
            }
        }
        internal enum Output: Sendable, Hashable {
            internal struct Ok: Sendable, Hashable {
                /// Creates a new `Ok`.
                internal init() {}
            }
            /// List of workflows retrieved successfully.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/get(listWorkflows)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            case ok(Operations.ListWorkflows.Output.Ok)
            /// List of workflows retrieved successfully.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/get(listWorkflows)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            internal static var ok: Self {
                .ok(.init())
            }
            /// The associated value of the enum case if `self` is `.ok`.
            ///
            /// - Throws: An error if `self` is not `.ok`.
            /// - SeeAlso: `.ok`.
            internal var ok: Operations.ListWorkflows.Output.Ok {
                get throws {
                    switch self {
                    case let .ok(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "ok",
                            response: self
                        )
                    }
                }
            }
            internal struct Unauthorized: Sendable, Hashable {
                /// Creates a new `Unauthorized`.
                internal init() {}
            }
            /// Unauthorized.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/get(listWorkflows)/responses/401`.
            ///
            /// HTTP response code: `401 unauthorized`.
            case unauthorized(Operations.ListWorkflows.Output.Unauthorized)
            /// Unauthorized.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/get(listWorkflows)/responses/401`.
            ///
            /// HTTP response code: `401 unauthorized`.
            internal static var unauthorized: Self {
                .unauthorized(.init())
            }
            /// The associated value of the enum case if `self` is `.unauthorized`.
            ///
            /// - Throws: An error if `self` is not `.unauthorized`.
            /// - SeeAlso: `.unauthorized`.
            internal var unauthorized: Operations.ListWorkflows.Output.Unauthorized {
                get throws {
                    switch self {
                    case let .unauthorized(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "unauthorized",
                            response: self
                        )
                    }
                }
            }
            /// Undocumented response.
            ///
            /// A response with a code that is not documented in the OpenAPI document.
            case undocumented(statusCode: Swift.Int, OpenAPIRuntime.UndocumentedPayload)
        }
    }
    /// Get Workflow Details
    ///
    /// Retrieves details of a specific workflow.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/workflows/{workflow_id}`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/{workflow_id}/get(getWorkflow)`.
    internal enum GetWorkflow {
        internal static let id: Swift.String = "getWorkflow"
        internal struct Input: Sendable, Hashable {
            /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/workflows/{workflow_id}/GET/path`.
            internal struct Path: Sendable, Hashable {
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/workflows/{workflow_id}/GET/path/owner`.
                internal var owner: Swift.String
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/workflows/{workflow_id}/GET/path/repo`.
                internal var repo: Swift.String
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/workflows/{workflow_id}/GET/path/workflow_id`.
                internal var workflowId: Swift.Int
                /// Creates a new `Path`.
                ///
                /// - Parameters:
                ///   - owner:
                ///   - repo:
                ///   - workflowId:
                internal init(
                    owner: Swift.String,
                    repo: Swift.String,
                    workflowId: Swift.Int
                ) {
                    self.owner = owner
                    self.repo = repo
                    self.workflowId = workflowId
                }
            }
            internal var path: Operations.GetWorkflow.Input.Path
            /// Creates a new `Input`.
            ///
            /// - Parameters:
            ///   - path:
            internal init(path: Operations.GetWorkflow.Input.Path) {
                self.path = path
            }
        }
        internal enum Output: Sendable, Hashable {
            internal struct Ok: Sendable, Hashable {
                /// Creates a new `Ok`.
                internal init() {}
            }
            /// Workflow details retrieved successfully.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/{workflow_id}/get(getWorkflow)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            case ok(Operations.GetWorkflow.Output.Ok)
            /// Workflow details retrieved successfully.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/{workflow_id}/get(getWorkflow)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            internal static var ok: Self {
                .ok(.init())
            }
            /// The associated value of the enum case if `self` is `.ok`.
            ///
            /// - Throws: An error if `self` is not `.ok`.
            /// - SeeAlso: `.ok`.
            internal var ok: Operations.GetWorkflow.Output.Ok {
                get throws {
                    switch self {
                    case let .ok(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "ok",
                            response: self
                        )
                    }
                }
            }
            internal struct Unauthorized: Sendable, Hashable {
                /// Creates a new `Unauthorized`.
                internal init() {}
            }
            /// Unauthorized.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/{workflow_id}/get(getWorkflow)/responses/401`.
            ///
            /// HTTP response code: `401 unauthorized`.
            case unauthorized(Operations.GetWorkflow.Output.Unauthorized)
            /// Unauthorized.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/{workflow_id}/get(getWorkflow)/responses/401`.
            ///
            /// HTTP response code: `401 unauthorized`.
            internal static var unauthorized: Self {
                .unauthorized(.init())
            }
            /// The associated value of the enum case if `self` is `.unauthorized`.
            ///
            /// - Throws: An error if `self` is not `.unauthorized`.
            /// - SeeAlso: `.unauthorized`.
            internal var unauthorized: Operations.GetWorkflow.Output.Unauthorized {
                get throws {
                    switch self {
                    case let .unauthorized(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "unauthorized",
                            response: self
                        )
                    }
                }
            }
            internal struct NotFound: Sendable, Hashable {
                /// Creates a new `NotFound`.
                internal init() {}
            }
            /// Workflow not found.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/{workflow_id}/get(getWorkflow)/responses/404`.
            ///
            /// HTTP response code: `404 notFound`.
            case notFound(Operations.GetWorkflow.Output.NotFound)
            /// Workflow not found.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/workflows/{workflow_id}/get(getWorkflow)/responses/404`.
            ///
            /// HTTP response code: `404 notFound`.
            internal static var notFound: Self {
                .notFound(.init())
            }
            /// The associated value of the enum case if `self` is `.notFound`.
            ///
            /// - Throws: An error if `self` is not `.notFound`.
            /// - SeeAlso: `.notFound`.
            internal var notFound: Operations.GetWorkflow.Output.NotFound {
                get throws {
                    switch self {
                    case let .notFound(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "notFound",
                            response: self
                        )
                    }
                }
            }
            /// Undocumented response.
            ///
            /// A response with a code that is not documented in the OpenAPI document.
            case undocumented(statusCode: Swift.Int, OpenAPIRuntime.UndocumentedPayload)
        }
    }
    /// List Workflow Runs
    ///
    /// Retrieves a list of workflow runs for the repository.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/runs`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/get(listWorkflowRuns)`.
    internal enum ListWorkflowRuns {
        internal static let id: Swift.String = "listWorkflowRuns"
        internal struct Input: Sendable, Hashable {
            /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/runs/GET/path`.
            internal struct Path: Sendable, Hashable {
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/runs/GET/path/owner`.
                internal var owner: Swift.String
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/runs/GET/path/repo`.
                internal var repo: Swift.String
                /// Creates a new `Path`.
                ///
                /// - Parameters:
                ///   - owner:
                ///   - repo:
                internal init(
                    owner: Swift.String,
                    repo: Swift.String
                ) {
                    self.owner = owner
                    self.repo = repo
                }
            }
            internal var path: Operations.ListWorkflowRuns.Input.Path
            /// Creates a new `Input`.
            ///
            /// - Parameters:
            ///   - path:
            internal init(path: Operations.ListWorkflowRuns.Input.Path) {
                self.path = path
            }
        }
        internal enum Output: Sendable, Hashable {
            internal struct Ok: Sendable, Hashable {
                /// Creates a new `Ok`.
                internal init() {}
            }
            /// List of workflow runs retrieved successfully.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/get(listWorkflowRuns)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            case ok(Operations.ListWorkflowRuns.Output.Ok)
            /// List of workflow runs retrieved successfully.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/get(listWorkflowRuns)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            internal static var ok: Self {
                .ok(.init())
            }
            /// The associated value of the enum case if `self` is `.ok`.
            ///
            /// - Throws: An error if `self` is not `.ok`.
            /// - SeeAlso: `.ok`.
            internal var ok: Operations.ListWorkflowRuns.Output.Ok {
                get throws {
                    switch self {
                    case let .ok(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "ok",
                            response: self
                        )
                    }
                }
            }
            internal struct Unauthorized: Sendable, Hashable {
                /// Creates a new `Unauthorized`.
                internal init() {}
            }
            /// Unauthorized.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/get(listWorkflowRuns)/responses/401`.
            ///
            /// HTTP response code: `401 unauthorized`.
            case unauthorized(Operations.ListWorkflowRuns.Output.Unauthorized)
            /// Unauthorized.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/get(listWorkflowRuns)/responses/401`.
            ///
            /// HTTP response code: `401 unauthorized`.
            internal static var unauthorized: Self {
                .unauthorized(.init())
            }
            /// The associated value of the enum case if `self` is `.unauthorized`.
            ///
            /// - Throws: An error if `self` is not `.unauthorized`.
            /// - SeeAlso: `.unauthorized`.
            internal var unauthorized: Operations.ListWorkflowRuns.Output.Unauthorized {
                get throws {
                    switch self {
                    case let .unauthorized(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "unauthorized",
                            response: self
                        )
                    }
                }
            }
            /// Undocumented response.
            ///
            /// A response with a code that is not documented in the OpenAPI document.
            case undocumented(statusCode: Swift.Int, OpenAPIRuntime.UndocumentedPayload)
        }
    }
    /// Get Workflow Run Details
    ///
    /// Retrieves details of a specific workflow run.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/runs/{run_id}`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/get(getWorkflowRun)`.
    internal enum GetWorkflowRun {
        internal static let id: Swift.String = "getWorkflowRun"
        internal struct Input: Sendable, Hashable {
            /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/runs/{run_id}/GET/path`.
            internal struct Path: Sendable, Hashable {
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/runs/{run_id}/GET/path/owner`.
                internal var owner: Swift.String
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/runs/{run_id}/GET/path/repo`.
                internal var repo: Swift.String
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/runs/{run_id}/GET/path/run_id`.
                internal var runId: Swift.Int
                /// Creates a new `Path`.
                ///
                /// - Parameters:
                ///   - owner:
                ///   - repo:
                ///   - runId:
                internal init(
                    owner: Swift.String,
                    repo: Swift.String,
                    runId: Swift.Int
                ) {
                    self.owner = owner
                    self.repo = repo
                    self.runId = runId
                }
            }
            internal var path: Operations.GetWorkflowRun.Input.Path
            /// Creates a new `Input`.
            ///
            /// - Parameters:
            ///   - path:
            internal init(path: Operations.GetWorkflowRun.Input.Path) {
                self.path = path
            }
        }
        internal enum Output: Sendable, Hashable {
            internal struct Ok: Sendable, Hashable {
                /// Creates a new `Ok`.
                internal init() {}
            }
            /// Workflow run details retrieved successfully.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/get(getWorkflowRun)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            case ok(Operations.GetWorkflowRun.Output.Ok)
            /// Workflow run details retrieved successfully.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/get(getWorkflowRun)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            internal static var ok: Self {
                .ok(.init())
            }
            /// The associated value of the enum case if `self` is `.ok`.
            ///
            /// - Throws: An error if `self` is not `.ok`.
            /// - SeeAlso: `.ok`.
            internal var ok: Operations.GetWorkflowRun.Output.Ok {
                get throws {
                    switch self {
                    case let .ok(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "ok",
                            response: self
                        )
                    }
                }
            }
            internal struct Unauthorized: Sendable, Hashable {
                /// Creates a new `Unauthorized`.
                internal init() {}
            }
            /// Unauthorized.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/get(getWorkflowRun)/responses/401`.
            ///
            /// HTTP response code: `401 unauthorized`.
            case unauthorized(Operations.GetWorkflowRun.Output.Unauthorized)
            /// Unauthorized.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/get(getWorkflowRun)/responses/401`.
            ///
            /// HTTP response code: `401 unauthorized`.
            internal static var unauthorized: Self {
                .unauthorized(.init())
            }
            /// The associated value of the enum case if `self` is `.unauthorized`.
            ///
            /// - Throws: An error if `self` is not `.unauthorized`.
            /// - SeeAlso: `.unauthorized`.
            internal var unauthorized: Operations.GetWorkflowRun.Output.Unauthorized {
                get throws {
                    switch self {
                    case let .unauthorized(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "unauthorized",
                            response: self
                        )
                    }
                }
            }
            internal struct NotFound: Sendable, Hashable {
                /// Creates a new `NotFound`.
                internal init() {}
            }
            /// Workflow run not found.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/get(getWorkflowRun)/responses/404`.
            ///
            /// HTTP response code: `404 notFound`.
            case notFound(Operations.GetWorkflowRun.Output.NotFound)
            /// Workflow run not found.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/get(getWorkflowRun)/responses/404`.
            ///
            /// HTTP response code: `404 notFound`.
            internal static var notFound: Self {
                .notFound(.init())
            }
            /// The associated value of the enum case if `self` is `.notFound`.
            ///
            /// - Throws: An error if `self` is not `.notFound`.
            /// - SeeAlso: `.notFound`.
            internal var notFound: Operations.GetWorkflowRun.Output.NotFound {
                get throws {
                    switch self {
                    case let .notFound(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "notFound",
                            response: self
                        )
                    }
                }
            }
            /// Undocumented response.
            ///
            /// A response with a code that is not documented in the OpenAPI document.
            case undocumented(statusCode: Swift.Int, OpenAPIRuntime.UndocumentedPayload)
        }
    }
    /// Download Workflow Logs
    ///
    /// Downloads the logs for a specific workflow run.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/actions/runs/{run_id}/logs`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/logs/get(downloadWorkflowLogs)`.
    internal enum DownloadWorkflowLogs {
        internal static let id: Swift.String = "downloadWorkflowLogs"
        internal struct Input: Sendable, Hashable {
            /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/runs/{run_id}/logs/GET/path`.
            internal struct Path: Sendable, Hashable {
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/runs/{run_id}/logs/GET/path/owner`.
                internal var owner: Swift.String
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/runs/{run_id}/logs/GET/path/repo`.
                internal var repo: Swift.String
                /// - Remark: Generated from `#/paths/repos/{owner}/{repo}/actions/runs/{run_id}/logs/GET/path/run_id`.
                internal var runId: Swift.Int
                /// Creates a new `Path`.
                ///
                /// - Parameters:
                ///   - owner:
                ///   - repo:
                ///   - runId:
                internal init(
                    owner: Swift.String,
                    repo: Swift.String,
                    runId: Swift.Int
                ) {
                    self.owner = owner
                    self.repo = repo
                    self.runId = runId
                }
            }
            internal var path: Operations.DownloadWorkflowLogs.Input.Path
            /// Creates a new `Input`.
            ///
            /// - Parameters:
            ///   - path:
            internal init(path: Operations.DownloadWorkflowLogs.Input.Path) {
                self.path = path
            }
        }
        internal enum Output: Sendable, Hashable {
            internal struct Ok: Sendable, Hashable {
                /// Creates a new `Ok`.
                internal init() {}
            }
            /// Logs downloaded successfully.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/logs/get(downloadWorkflowLogs)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            case ok(Operations.DownloadWorkflowLogs.Output.Ok)
            /// Logs downloaded successfully.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/logs/get(downloadWorkflowLogs)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            internal static var ok: Self {
                .ok(.init())
            }
            /// The associated value of the enum case if `self` is `.ok`.
            ///
            /// - Throws: An error if `self` is not `.ok`.
            /// - SeeAlso: `.ok`.
            internal var ok: Operations.DownloadWorkflowLogs.Output.Ok {
                get throws {
                    switch self {
                    case let .ok(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "ok",
                            response: self
                        )
                    }
                }
            }
            internal struct Unauthorized: Sendable, Hashable {
                /// Creates a new `Unauthorized`.
                internal init() {}
            }
            /// Unauthorized.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/logs/get(downloadWorkflowLogs)/responses/401`.
            ///
            /// HTTP response code: `401 unauthorized`.
            case unauthorized(Operations.DownloadWorkflowLogs.Output.Unauthorized)
            /// Unauthorized.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/logs/get(downloadWorkflowLogs)/responses/401`.
            ///
            /// HTTP response code: `401 unauthorized`.
            internal static var unauthorized: Self {
                .unauthorized(.init())
            }
            /// The associated value of the enum case if `self` is `.unauthorized`.
            ///
            /// - Throws: An error if `self` is not `.unauthorized`.
            /// - SeeAlso: `.unauthorized`.
            internal var unauthorized: Operations.DownloadWorkflowLogs.Output.Unauthorized {
                get throws {
                    switch self {
                    case let .unauthorized(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "unauthorized",
                            response: self
                        )
                    }
                }
            }
            internal struct NotFound: Sendable, Hashable {
                /// Creates a new `NotFound`.
                internal init() {}
            }
            /// Logs not found.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/logs/get(downloadWorkflowLogs)/responses/404`.
            ///
            /// HTTP response code: `404 notFound`.
            case notFound(Operations.DownloadWorkflowLogs.Output.NotFound)
            /// Logs not found.
            ///
            /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/actions/runs/{run_id}/logs/get(downloadWorkflowLogs)/responses/404`.
            ///
            /// HTTP response code: `404 notFound`.
            internal static var notFound: Self {
                .notFound(.init())
            }
            /// The associated value of the enum case if `self` is `.notFound`.
            ///
            /// - Throws: An error if `self` is not `.notFound`.
            /// - SeeAlso: `.notFound`.
            internal var notFound: Operations.DownloadWorkflowLogs.Output.NotFound {
                get throws {
                    switch self {
                    case let .notFound(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "notFound",
                            response: self
                        )
                    }
                }
            }
            /// Undocumented response.
            ///
            /// A response with a code that is not documented in the OpenAPI document.
            case undocumented(statusCode: Swift.Int, OpenAPIRuntime.UndocumentedPayload)
        }
    }
}
