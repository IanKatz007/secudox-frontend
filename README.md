# Secudox Platform Frontend

## Overview
Secudox is a comprehensive digital platform designed to modernize visitor management and security operations for residential and commercial properties. This repository contains the frontend implementation built with Flutter for cross-platform support.

## Features

### Tenant Mobile App
- User registration and authentication
- Visitor pre-registration
- Real-time notifications
- Visitor approval/denial system

### Guard Interface (Tablet-Based)
- Secure login with site selection
- Bilingual support (English/Kiswahili)
- Visitor information capture
- Incident reporting
- Emergency features
- Supervisor communication

### Supervisor & Admin Dashboards
- Guard management
- Site monitoring
- Analytics and reporting
- System administration

## Tech Stack
- Flutter 3.19.0
- Provider for state management
- GetX for navigation and dependency injection
- Firebase for real-time features
- REST API integration with Laravel backend

## Project Structure
```
lib/
├── app/                    # Application layer
│   ├── bindings/          # Dependency injection bindings
│   ├── data/              # Data layer (repositories, models)
│   ├── modules/           # Feature modules
│   └── routes/            # Route definitions
├── core/                  # Core functionality
│   ├── config/            # Configuration files
│   ├── theme/            # Theme and styling
│   ├── utils/            # Utility functions
│   └── widgets/          # Shared widgets
└── main.dart             # Entry point
```

## Getting Started

### Prerequisites
- Flutter SDK (3.19.0 or higher)
- Dart SDK (3.3.0 or higher)
- Android Studio / VS Code
- iOS development setup (for iOS builds)

### Installation
1. Clone the repository
```bash
git clone https://github.com/IanKatz007/secudox-frontend.git
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the application
```bash
flutter run
```

## Development

### Code Style
- Follow official Flutter style guide
- Use proper documentation for public APIs
- Implement proper error handling
- Write unit tests for business logic

### Building
```bash
# Debug build
flutter build apk --debug

# Release build
flutter build apk --release
```

## Testing
```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage
```

## Contributing
Please read CONTRIBUTING.md for details on our code of conduct and the process for submitting pull requests.

## License
This project is licensed under the MIT License - see the LICENSE file for details