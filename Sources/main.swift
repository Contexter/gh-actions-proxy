import Vapor

func runApp() async throws {
    // Detect the environment
    var env = try Environment.detect()
    try LoggingSystem.bootstrap(from: &env)

    // Create the Vapor application
    let app = try Application(env)

    // Ensure the application shuts down properly
    defer { app.shutdown() }

    // Configure a simple `/hello` route
    app.get("hello") { req -> String in
        "Hello, world!"
    }

    // Start the application using async startup
    try await app.startup()

    // Suspend indefinitely to keep the app running
    await withCheckedContinuation { (_: CheckedContinuation<Void, Never>) in
        // This continuation never resumes, keeping the task alive indefinitely
    }
}

// Manually start the application
Task {
    do {
        try await runApp()
    } catch {
        fatalError("Application failed: \(error)")
    }
}

// Keep the main thread active
RunLoop.main.run()
