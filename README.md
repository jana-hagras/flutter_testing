# 🧪 Flutter Testing Showcase

A comprehensive demonstration of various testing techniques in Flutter, ranging from simple unit tests to complex service mocking and widget interactions.

## 🚀 Overview

This project serves as an educational resource and a "starting point" for implementing a robust testing suite in Flutter applications. It showcases:

- **Unit Testing**: Validating business logic in isolation.
- **Service Mocking**: Using `mocktail` to simulate network responses and external dependencies.
- **Widget Testing**: Ensuring UI components behave as expected and interact correctly.

## 📂 Project Structure

| Feature         | Source File            | Test File                    | Test Type          |
| :-------------- | :--------------------- | :--------------------------- | :----------------- |
| **Counter**     | `lib/counter.dart`     | `test/counter_test.dart`     | Unit Test          |
| **Logic**       | `lib/iseven.dart`      | `test/iseven_test.dart`      | Unit Test          |
| **API/Network** | `lib/fetch_album.dart` | `test/fetch_album_test.dart` | Mocking (Mocktail) |
| **Forms**       | `lib/login_form.dart`  | `test/login_form_test.dart`  | Widget Test        |
| **Main App**    | `lib/main.dart`        | `test/widget_test.dart`      | Widget Test        |

## 🛠️ Key Technologies

- [mocktail](https://pub.dev/packages/mocktail): For easy and powerful service mocking.
- [http](https://pub.dev/packages/http): For handling network requests.
- [flutter_test](https://api.flutter.dev/flutter/package-flutter_test/package-flutter_test-library.html): The core Flutter testing framework.

## 🚦 Getting Started

### Prerequisites

Ensure you have [Flutter](https://docs.flutter.dev/get-started/install) installed on your machine.

### Installation

1. Clone this repositor:
   ```bash
   git clone https://github.com/jana-hagras/flutter_testing.git
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```

## 🧪 Running Tests

To run all tests in the project:

```bash
flutter test
```

To run a specific test file:

```bash
flutter test test/fetch_album_test.dart
```

To see test coverage (requires `lcov`):

```bash
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```
