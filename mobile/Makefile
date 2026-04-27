.PHONY: help run test lint analyze build-android build-ios clean deps format

# Default target
help:
	@echo "Available commands:"
	@echo "  run         - Run the app on connected device/emulator"
	@echo "  test        - Run all tests"
	@echo "  lint        - Run static analysis"
	@echo "  analyze     - Run flutter analyze (alias for lint)"
	@echo "  format      - Format code"
	@echo "  deps        - Get dependencies"
	@echo "  clean       - Clean build artifacts"
	@echo "  build-android - Build APK for Android"
	@echo "  build-ios   - Build iOS app"
	@echo "  build-all   - Build for both platforms"

# Run the app
run:
	flutter run

# Run tests
test:
	flutter test

# Run static analysis (linting)
lint:
	flutter analyze

# Alias for analyze
analyze:
	flutter analyze

# Format code
format:
	dart format .

# Get dependencies
deps:
	flutter pub get

# Clean build artifacts
clean:
	flutter clean
	flutter pub get

# Build APK for Android
build-android:
	flutter build apk --release

# Build iOS app
build-ios:
	flutter build ios --release

# Build for both platforms
build-all: build-android build-ios

# Development workflow
dev: deps format lint test run

# CI workflow
ci: deps lint test
