# GitHub Actions Proxy - Template

This repository branch provides a **template** for building proxy servers using **Swift OpenAPI Generator** and **Vapor**.

---

## Features

- **Swift Package Manager** project structure.
- **OpenAPI-driven** API generation and routing.
- **Vapor-based middleware** setup for logging and error handling.
- Pre-configured files for custom handler implementation.

---

## Usage Instructions

### 1. Replace OpenAPI Specification

Replace the existing `openAPI.yaml` file with your new API specification.

### 2. Regenerate Code

Use **Swift OpenAPI Generator** to regenerate code based on the new spec:

```bash
swift package generate-api --input openAPI.yaml --output Sources/Generated
```

### 3. Copy Generated Code

Manually copy the generated files into the `Sources/Generated` folder.
This ensures changes are preserved when regenerating code.

### 4. Implement API Handlers

Edit `CustomAPIImplementation.swift` to implement handlers conforming to `APIProtocol`.

---

## Development Notes

- **`CustomAPIImplementation.swift`** is a placeholder and must be updated to match the OpenAPI contract.
- Middleware and routing setup are already provided in `configure.swift`.
- This template allows switching the API spec without changing the core application structure.

---

## Template Update Process

1. Replace `openAPI.yaml` with a new specification.
2. Regenerate code and copy files into `Generated`.
3. Update `CustomAPIImplementation.swift` to implement required methods.

---

## License

[MIT License](LICENSE)

