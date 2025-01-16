import XCTest
import Actions

final class ActionsModuleTests: XCTestCase {
    func testActionsModuleImport() throws {
        // This will help ensure that the module imports correctly
        XCTAssertTrue(true, "Actions module imported successfully.")
    }

    func testOperationsAccess() throws {
        // Check if `Operations` type exists in the Actions module
        let input = Operations.ListWorkflows.Input(
            path: Operations.ListWorkflows.Input.Path(owner: "testOwner", repo: "testRepo")
        )
        XCTAssertNotNil(input, "Operations.ListWorkflows.Input should be accessible.")
    }
}
