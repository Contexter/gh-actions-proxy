# GitHub Actions API Proxy

## Overview
This project is a **Swift Vapor-based proxy service** for interacting with the **GitHub Actions API**. It leverages **OpenAPI specifications**, **Swift OpenAPI Generator**, and **OctoKit** for seamless integration with GitHub workflows, logs, and artifacts.

### Key Features
- **Proxy for GitHub Actions API Endpoints** - Provides an intermediary service for GitHub Actions workflows, runs, and logs.
- **OpenAPI Specification Compliance** - Ensures consistency and schema validation through OpenAPI-generated code.
- **Vapor Framework** - Robust, scalable backend server implementation.
- **OctoKit Integration** - Direct interaction with GitHub's REST API for extended functionality.
- **Database Support** - Uses SQLite via Fluent ORM for metadata storage.
- **Search Optimization** - Built-in Typesense client for fast and typo-tolerant search capabilities.

## Project Structure
```
ActionsAPIProxy/
├── Package.swift
├── Sources/
│   ├── ActionsAPIProxy/
│   │   ├── main.swift
│   │   ├── configure.swift
│   │   ├── Routes/
│   │   ├── Handlers/
│   │   ├── Services/
│   │   ├── Models/
│   │   ├── Migrations/
│   │   ├── openapi.yaml
│   │   └── openapi-generator-config.yaml
├── Generated/
├── Tests/
└── README.md
```

## Setup Instructions
### Prerequisites
- **Swift 5.9+**
- **macOS 10.15+**
- **Xcode 15+**

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Contexter/gh-actions-proxy.git
   cd gh-actions-proxy
   ```
2. Resolve dependencies:
   ```bash
   swift package update
   ```
3. Build the project:
   ```bash
   swift build
   ```

### Running the Proxy
Start the Vapor server locally:
```bash
swift run ActionsAPIProxy
```

Access the API at `http://localhost:8080`.

## Configuration
### Environment Variables
- **GITHUB_TOKEN**: Required for authentication with GitHub APIs.

## API Documentation
API endpoints and schemas are defined in the **OpenAPI specification** located at:
```
Sources/ActionsAPIProxy/openapi.yaml
```

## Testing
### Unit Tests
```bash
swift test
```
### Manual API Testing
Use tools like **Postman** or **cURL** to interact with the proxy endpoints.

## Contributing
1. Fork this repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your message here"
   ```
4. Push to your branch and create a PR:
   ```bash
   git push origin feature/your-feature-name
   ```

## License
This project is licensed under the **MIT License**.

## Contact
For issues or feature requests, open an issue on the repository.

**Repository:** [https://github.com/Contexter/gh-actions-proxy](https://github.com/Contexter/gh-actions-proxy)

