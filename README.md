# Flutter Multi-Platform App (Write Once, Run Anywhere)

A production-ready Flutter application targeting **Android, iOS, and Web (PWA)**. Built with a "Feature-First Clean Architecture" to ensure high scalability, maintainability, and a responsive UI/UX across all devices.

---

## 🚀 Tech Stack

- **Core**: Flutter (Latest Stable) & Dart 3
- **State Management**: [Riverpod 3.x](https://riverpod.dev) (Logic & DI)
- **Responsive UI**: `flutter_screenutil` & Adaptive Layout Strategies
- **Navigation**: [GoRouter](https://pub.dev/packages/go_router) (Web URLs & Deep Links)
- **Backend**: Firebase (Auth, Firestore, Storage, Functions)
- **Data Modeling**: [Freezed 3.x](https://pub.dev/packages/freezed) (Immutable Models & Sealed Classes)
- **Functional Logic**: [Fpdart](https://pub.dev/packages/fpdart) (Safe Error Handling)
- **Code Quality**: [Very Good Analysis](https://pub.dev/packages/very_good_analysis)

---

## 🏗️ Architecture: Feature-First Clean Architecture

The codebase is organized by cohesive features rather than technical layers. Each feature is internally divided into three clean layers:

```text
lib/src/features/feature_name/
├── data/           # Data Sources (Firebase), DTOs, Repository Implementations
├── domain/         # Entities (Freezed), Repository Interfaces, Value Objects
└── presentation/   # Logic (Controllers), Screens (Responsive Views), Widgets
```

### Key Directories
- `lib/src/common_widgets/`: Reusable, atomic UI components.
- `lib/src/core/`: Application-wide configurations (theme, router, exceptions).
- `lib/src/utils/`: Breakpoints & global constants.
- `lib/src/shared/`: Cross-feature logic and shared infrastructure.

---

## 🛠️ Project Setup

### 1. Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.
- [Firebase CLI](https://firebase.google.com/docs/cli) installed and logged in.

### 2. Initialization
Clone the project and run:
```bash
flutter pub get
```

### 3. Firebase Configuration (CRITICAL)
This project uses `DefaultFirebaseOptions`. You **MUST** run the configuration command to generate your local credentials:
```bash
flutterfire configure
```
This will automatically generate `lib/firebase_options.dart` with keys for all platforms.

### 4. Code Generation
Generate the reactive providers, JSON serializable models, and Freezed classes:
```bash
# Run once
dart run build_runner build --delete-conflicting-outputs

# Watch for changes (recommended during development)
dart run build_runner watch --delete-conflicting-outputs
```

---

## 📱 Development Guidelines

### Responsive & Adaptive UI
Since we target both Web (Mouse/Keyboard) and Mobile (Touch), follow these rules:
1. **Use Breakpoints**: Reference `breakpoints.dart` for Screen sizes.
2. **Platform Views**: For complex screens, separate views:
   - `my_feature_screen_mobile.dart`
   - `my_feature_screen_web.dart`
   - Use `ResponsiveScaffold` to switch between them.
3. **ScreenUtil**: Use `.sp`, `.w`, `.h` for responsive scaling on mobile, but use constraints for wide screens.

### Navigation (Web)
We use `url_strategy` to provide clean URLs.
- **Mobile**: standard push/pop flow.
- **Web**: Deep links and browser history are handled via `GoRouter`.

### Error Handling
**Never throw exceptions directly in repositories.**
Use `Either<Failure, Success>` from `fpdart`:
```dart
Future<Either<AuthFailure, UserEntity>> signIn(...) { ... }
```

### Quality Assurance
Before committing, ensure analysis passes:
```bash
flutter analyze
```

---

## 🚢 Deployment

### Web (PWA)
```bash
flutter build web --release
```

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

---

## 📄 License
MIT License. See [LICENSE](LICENSE) for details.
