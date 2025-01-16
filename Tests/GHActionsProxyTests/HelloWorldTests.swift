import XCTest
import Vapor
import XCTVapor // Ensure XCTVapor is imported for testing
@testable import GHActionsProxy

final class HelloWorldTests: XCTestCase {
    func testHelloWorldRoute() async throws {
        // Create the Vapor app
        let app = Application(.testing)
        defer { app.shutdown() }

        // Add the `/hello` route
        app.get("hello") { req -> String in
            "Hello, world!"
        }

        // Perform a test request to `/hello` in-memory
        try app.test(.GET, "/hello", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
            XCTAssertEqual(res.body.string, "Hello, world!")
        })
    }
}
