# GitHub Actions Proxy - Template

This repository branch provides a **template** for building proxy servers using **Swift OpenAPI Generator** and **Vapor**.

## Features

- **Swift Package Manager** project structure.
- **OpenAPI-driven** API generation and routing.
- Supports **Vapor middleware** and custom implementations.
- Serves as a **template** branch to create new projects based on OpenAPI specifications.

## Usage Instructions

### **DO NOT MERGE INTO MAIN**
This branch (`GH-Proxy-Template`) is meant to remain as a **template** branch and should **not** be merged into the `main` branch. Instead, it should be used as a starting point for new projects.

### **Create a New Branch from the Template**
To start a new project:
```bash
git checkout -b NewFeatureBranch GH-Proxy-Template
```
This will create a new branch (`NewFeatureBranch`) based on the template.

### **Implement Custom API Logic**
- Replace the placeholder methods in `CustomAPIImplementation.swift` with logic conforming to your OpenAPI specification.
- Ensure all required methods in the `APIProtocol` are implemented.
- Use comments and documentation in the code as guidance.

### **Manual Steps**
- Update the `openapi.yaml` file for your API design.
- Run the OpenAPI Generator to regenerate types and routes.
- Copy the generated files into the `Generated` directory.

## Notes
- This template separates protocol definitions (generated code) from custom logic (your code).
- Use this approach for scalable, OpenAPI-driven server implementations.

## Contributing
Feel free to submit issues and suggestions, but remember that this branch is designed to remain as a **template** and should not be modified directly for project-specific features.

---
**Happy Coding!**

