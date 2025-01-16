import XCTest
import Actions

final class ActionsAccessibilityTests: XCTestCase {
    func testActionsModuleAccessible() {
        // Test if Actions module is accessible
        XCTAssertTrue(true, "Actions module imported successfully.")
    }

    func testOperationsAccessible() {
        // Test if Operations type is accessible
        // This will fail if Operations isn't public or doesn't exist
        let input = Operations.ListWorkflows.Input(
            path: Operations.ListWorkflows.Input.Path(owner: "testOwner", repo: "testRepo")
        )
        XCTAssertNotNil(input, "Operations.ListWorkflows.Input should be accessible.")
    }
}

