# iOSBaseSourceCode

**iOSBaseSourceCode** is a foundational iOS project template built with Swift, UIKit, and a combination of MVVM and Clean Architecture principles. It provides a scalable and maintainable structure to kickstart new iOS applications efficiently.

---

## Table of Contents

- [Overview](#overview)
- [Architecture](#architecture)
- [Features](#features)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Author](#author)

---

## Overview

This project serves as a boilerplate for iOS applications, integrating best practices and design patterns to ensure code quality and ease of development. By leveraging MVVM and Clean Architecture, it separates concerns and promotes testability.

---

## Architecture

The project follows a hybrid of MVVM and Clean Architecture:

- **Model-View-ViewModel (MVVM):** Separates the UI (View) from the business logic (ViewModel), enhancing testability and modularity.

- **Clean Architecture:** Divides the project into layers (Presentation, Domain, Data) with clear boundaries, ensuring that business rules are independent of frameworks and UI.

---

## Features

- Modular project structure
- Dependency injection
- Network layer abstraction
- Unit and UI testing setup
- Error handling mechanisms

---

## Project Structure

```
iOSBaseSourceCode/
├── TymeXTest/
│   ├── Application/              # Entry point for the app, AppDelegate, SceneDelegate, and Dependency Injection container
│   ├── Network/                  # Network layer configurations and utilities (e.g., request builders, interceptors)
│   ├── Domain/                   # Pure business logic, independent from frameworks and external layers
│   │   ├── Entities/             # Business entities and models used across the app
│   │   ├── UseCases/             # Use case classes that encapsulate business rules
│   │   └── Interfaces/           # Protocols defining repositories/services required by the domain layer
│   ├── Data/                     # Implementation of domain interfaces using APIs, local storage, etc.
│   │   ├── DTO/                  # Data Transfer Objects used for API communication
│   │   ├── Repositories/         # Concrete implementations of domain interfaces
│   │   └── Storage/              # Local storage management (e.g., UserDefaults, CoreData)
│   ├── Presentation/             # UI layer built with UIKit using MVVM pattern
│   │   ├── [FeatureName]/        # Each screen/module grouped by feature
│   │   │   ├── Views/            # Reusable UI components and XIBs
│   │   │   ├── ViewModels/       # Business logic for the UI, binds to ViewControllers
│   │   │   └── ViewControllers/  # UIKit view controllers that render the UI
│   ├── Resources/                # Assets, Localizable.strings, and other resource files
│   └── Utils/                    # Utility functions, extensions, helpers
├── TymeXTestTests/               # Unit tests for business logic and view models
├── TymeXTestUITests/            # UI tests using XCTest framework
├── Podfile                      # CocoaPods dependency declarations
└── README.md
```

---

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/nguyenthanhnhut5897/iOSBaseSourceCode.git
   ```

2. Navigate to the project directory:

   ```bash
   cd iOSBaseSourceCode
   ```

3. Install dependencies:

   ```bash
   pod install
   ```

4. Open the workspace:

   ```bash
   open TymeXTest.xcworkspace
   ```

5. Build and run the project using Xcode.

---

## Requirements

- Xcode 12.0 or later
- iOS 13.0 or later
- CocoaPods

---

## Usage

This base project is ready for customization. Add your features and following the existing structure to maintain consistency and scalability.

---

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any enhancements or bug fixes.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Author

**Nguyễn Thanh Nhựt**  
[GitHub Profile](https://github.com/nguyenthanhnhut5897)
