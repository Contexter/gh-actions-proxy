# **Project Specification: OpenAPI-Based Vapor Server with Code Generation Tool**

> This document acts as the single source of truth to maintain continuity across sessions and ensure alignment between development phases.&#x20;

## **1. Project Overview**

### **Objective**

The primary goal of this project is to build a **CLI tool** that automates the process of generating **handlers** and **services** for a Swift Vapor server based on an **OpenAPI specification**. This tool eliminates guesswork and ensures strict adherence to the generated **Swift OpenAPI plugin protocols**.

### **Why This Project?**

1. **Address Guesswork Issues:** Prevent manual trial-and-error approaches to implementing handlers and services.
2. **Streamline Development:** Automate code scaffolding for quick implementation.
3. **Reusability:** Provide a repeatable process applicable to multiple OpenAPI specifications.
4. **Maintainability:** Reduce human error and enforce consistency across projects.

---

## **2. Key Features**

1. **Swift OpenAPI Integration:**
   - Leverages the **Swift OpenAPI Generator Plugin** to generate code directly from an OpenAPI YAML specification.
2. **Protocol Compliance:**
   - Guarantees that generated handlers conform to the protocols defined in `Server.swift`.
3. **Parser-Based Analysis:**
   - Reads `Server.swift` and `Types.swift` to extract protocol requirements and data models.
4. **Automatic Scaffolding:**
   - Generates handler and service stubs with placeholders for implementation.
5. **Testing Framework:**
   - Provides test cases to verify OpenAPI compliance.
6. **Cross-Platform CLI Tool:**
   - Works across systems for consistent project setup and management.

---

## **3. Requirements**

### **Software Requirements**

- Swift 5.9+
- macOS 13.0+
- Swift Package Manager (SPM)
- Vapor 4.89.0+
- Swift OpenAPI Generator Plugin (1.6.0)
- Typesense-Swift (1.0.0)
- Fluent SQLite Driver (4.3.0)

### **Input Requirements**

- OpenAPI Specification File (`openapi.yaml`)
- Generated `Server.swift` and `Types.swift` from OpenAPI plugin.

### **Output Requirements**

- Handlers conforming to `APIProtocol`.
- Services implementing business logic.
- Unit and integration tests.
- Packaged CLI tool.

---

## **4. Workflow Design**

### **Phase 1: Initial Setup**

1. Create a Vapor project structure.
2. Configure dependencies in `Package.swift`.
3. Place the OpenAPI YAML specification file.
4. Generate `Server.swift` and `Types.swift` using the OpenAPI plugin.
5. Validate code generation.

**Output:**

- Base project structure and generated code.

---

### **Phase 2: Parsing Generated Code**

1. Develop a parser to analyze `Server.swift` and `Types.swift`.
2. Extract required methods from protocols.
3. Map input and output types to data models.

**Output:**

- Parsed mappings of API methods.
- Logs validating protocol expectations.

---

### **Phase 3: Code Generation Tool**

1. Build CLI commands for:
   - Generating handler stubs.
   - Generating service stubs.
2. Implement template-based code generation.
3. Ensure placeholders align with protocol requirements.

**Output:**

- Automatically generated handlers and services.
- Code ready for manual business logic implementation.

---

### **Phase 4: Testing Framework**

1. Write tests validating generated code.
2. Include mock data to simulate API requests and responses.
3. Verify OpenAPI compliance.

**Output:**

- Test suite ensuring correctness and compliance.

---

### **Phase 5: Packaging the CLI Tool**

1. Package the tool as a binary.
2. Provide command-line options for custom configurations.
3. Support future OpenAPI specifications by adapting YAML input.

**Output:**

- Fully operational CLI tool.

---

## **5. Final Project Structure**

```
OpenAPIGenTutorial/
├── Package.swift
├── Sources/
│   ├── OpenAPIGenTutorial/
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

---

## **6. Open Questions**

1. **Parser Validation:** How do we ensure edge cases in parsing `Server.swift` and `Types.swift` are covered?
2. **Extensibility:** How can the CLI tool support custom templates for different workflows?
3. **Error Handling:** What safeguards need to be implemented for parsing errors?

---

##

This document acts as the **single source of truth** to maintain continuity across sessions and ensure alignment between development phases.&#x20;

