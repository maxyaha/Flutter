# Flutter App

A modern, high-performance Flutter application built with a robust tech stack, focusing on clean architecture, reactive state management, and seamless Firebase integration.

## 🚀 Tech Stack

- **Framework**: [Flutter](https://flutter.dev) (Latest Stable)
- **State Management**: [Riverpod 3.x](https://riverpod.dev) (Modern, type-safe, and reactive)
- **Data Modeling**: [Freezed 3.x](https://pub.dev/packages/freezed) (Immutable models and sealed classes)
- **Backend/API**: [Firebase](https://firebase.google.com) (Auth, Cloud Firestore, Cloud Storage)
- **Navigation**: [GoRouter](https://pub.dev/packages/go_router) (Declarative routing)
- **Functional Programming**: [Fpdart](https://pub.dev/packages/fpdart) (Functional types like `Either` for error handling)
- **Linting**: [Very Good Analysis](https://pub.dev/packages/very_good_analysis) (Strict and consistent coding standards)

## 🏗️ Architecture

The project follows a **Feature-First Clean Architecture** approach, ensuring scalability and testability:

- `lib/src/core`: Common utilities, theme, router, and cross-cutting concerns.
- `lib/src/features`: Feature-based modules (e.g., `auth`, `home`).
  - `data`: Repositories implementations, DTOs, and data sources.
  - `domain`: Pure business logic, entities, and repository interfaces.
  - `presentation`: UI components, screens, and Riverpod controllers.
- `lib/src/shared`: Generic widgets and shared components used across features.

## 🛠️ Getting Started

### Prerequisites

- Flutter SDK (stable channel)
- Firebase Account and Project

### Installation

1. Clone the repository.
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Configure Firebase:
   ```bash
   flutterfire configure
   ```
4. Run code generation (required for Riverpod and Freezed):
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

### Running the App

```bash
flutter run
```

## 🧪 Testing & Quality

- **Linting**: Run `flutter analyze` to ensure code quality.
- **Testing**: Run `flutter test` to execute the test suite (uses `ProviderScope` for Riverpod).

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.
