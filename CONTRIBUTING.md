# Contributing to Antigravity API Client

Thank you for your interest in contributing to the Antigravity API Client! To keep the repository structured and clean, please follow these guidelines:

---

## 🛠️ Developer Workflow

### 1. Set Up Environment
Ensure you have the Flutter SDK (v3.10+) configured. Clone the repository and install dependencies:
```bash
flutter pub get
```

### 2. Code Generation
Always run code generators when modifying Freezed models, Riverpod providers, or Isar collections:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```
Do not manually edit any `.g.dart` or `.freezed.dart` files.

### 3. Verification Gates
Before submitting a pull request, verify that your changes pass both unit tests and static analysis:
```bash
# Run unit tests
flutter test

# Run static analysis linter
flutter analyze
```

---

## 🤝 Code Style & Guidelines

- **Clean Commits:** Write clear, concise commit messages outlining what was added or changed (e.g. `feat: implement oauth token refresh`).
- **Formatting:** Ensure code is formatted correctly using `flutter format .` before committing.
- **Type Safety:** Avoid dynamic types; declare explicit types for parameters, variables, and return signatures.
- **Riverpod Generators:** Rely on `@riverpod` annotations for business logic state containers rather than manually writing providers.
