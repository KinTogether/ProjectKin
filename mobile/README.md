# ProjectKin Mobile (Flutter)

Flutter mobile application for ProjectKin with clean architecture and modern development practices.

## 🚀 Quick Start

### Prerequisites
- Flutter SDK (>= 3.11.1)
- Dart SDK
- Android Studio / Xcode for mobile development
- Connected device or emulator

### Setup

1. **Install dependencies**
   ```bash
   flutter pub get
   ```

2. **Configure environment**
   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Available Commands

Use the Makefile for common development tasks:

```bash
make help          # Show all available commands
make run           # Run the app
make test          # Run tests
make lint          # Run static analysis
make format        # Format code
make clean         # Clean build artifacts
make build-android # Build APK for Android
make build-ios     # Build iOS app
```

## 📁 Project Structure

```
mobile/
├── lib/
│   ├── core/              # Shared utilities and configurations
│   │   ├── constants.dart  # App constants and route names
│   │   └── theme.dart      # App themes (light/dark)
│   ├── data/              # Data layer
│   │   ├── models.dart     # Data models
│   │   └── repositories.dart # Repository implementations
│   ├── domain/            # Business logic layer
│   │   └── use_cases.dart # Use cases and business rules
│   ├── presentation/      # UI layer
│   │   ├── screens.dart   # Screen widgets
│   │   └── widgets.dart   # Reusable widgets
│   └── main.dart          # App entry point
├── test/                  # Unit tests
├── integration_test/      # Integration tests
├── .env                   # Environment variables (git-ignored)
├── .env.example          # Environment template
├── pubspec.yaml           # Dependencies and configuration
├── analysis_options.yaml  # Linting rules
└── Makefile              # Common development commands
```

## 🛠️ Tech Stack

- **State Management**: Riverpod
- **Routing**: go_router
- **Backend**: Supabase
- **Environment Config**: flutter_dotenv
- **Linting**: Comprehensive lint rules with flutter_lints

## 🧪 Testing

- **Unit Tests**: `flutter test`
- **Integration Tests**: `flutter test integration_test/`
- **Static Analysis**: `flutter analyze`

## 📱 Platforms Supported

- ✅ Android
- ✅ iOS
- ✅ Web (Chrome, Edge)
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🔧 Development Workflow

1. **Make changes** to your code
2. **Format code**: `make format`
3. **Run linting**: `make lint`
4. **Run tests**: `make test`
5. **Run app**: `make run`

## 📋 Environment Variables

Copy `.env.example` to `.env` and configure:

```env
# Supabase Configuration
SUPABASE_URL=your_supabase_url_here
SUPABASE_ANON_KEY=your_supabase_anon_key_here

# Environment
ENVIRONMENT=development
```

## 🤝 Contributing

1. Follow the existing code structure and naming conventions
2. Add tests for new features
3. Run `make ci` before submitting PRs
4. Follow the linting rules defined in `analysis_options.yaml`

## 📚 Architecture

This project follows **Clean Architecture** principles:

- **Presentation Layer**: UI components, screens, and state management
- **Domain Layer**: Business logic and use cases
- **Data Layer**: Data sources, repositories, and models
- **Core Layer**: Shared utilities, constants, and themes

Each layer has clear separation of concerns, making the codebase maintainable and testable.
