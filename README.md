<div align="center">

# 🔢 String Calculator

### A Test-Driven Development Kata Implementation in Dart

---

[![Dart](https://img.shields.io/badge/Dart-3.0%2B-blue?logo=dart)](https://dart.dev)
[![Test Package](https://img.shields.io/badge/Test-1.22%2B-green?logo=dart)](https://pub.dev/packages/test)
[![TDD Methodology](https://img.shields.io/badge/Methodology-TDD-red?logo=git)](https://en.wikipedia.org/wiki/Test-driven_development)

*A technical assessment project demonstrating clean code, TDD principles, and incremental development.*

---

</div>

## 📋 Table of Contents

- [Overview](#overview)
- [✨ Features](#-features)
- [🧪 TDD Approach](#-tdd-approach)
- [🚀 Quick Start](#-quick-start)
- [📂 Project Structure](#-project-structure)
- [💻 Usage Examples](#-usage-examples)
- [🔮 Future Enhancements](#-future-enhancements)
- [📝 Notes](#-notes)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)

---

## Overview

This project implements the **String Calculator Kata** using **Test-Driven Development (TDD)** principles. The String Calculator is a classic coding kata that demonstrates how to build functionality incrementally through red-green-refactor cycles.

> *"The focus is not just the final solution, but the development approach, code quality, and incremental commits following TDD principles."*

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 🔳 Empty String | Returns `0` for empty string input |
| 🔢 Single Number | Returns the number itself for single input |
| ➕ Multiple Numbers | Supports comma-separated numbers |
| 🌐 Newline Support | Accepts `\n` as a valid delimiter |
| 🔧 Custom Delimiters | Supports custom delimiters via `//[delimiter]\n` syntax |
| ⚠️ Error Handling | Throws exceptions for negative numbers with detailed messages |

### Example Usage

```
Input: ""          → Output: 0
Input: "1"         → Output: 1
Input: "1,2,3"     → Output: 6
Input: "1\n2,3"    → Output: 6
Input: "//;\n1;2"  → Output: 3
Input: "1,-2"      → Throws: "negative numbers not allowed -2"
```

---

## 🧪 TDD Approach

This project follows a strict **Red → Green → Refactor** cycle:

```
┌─────────────────────────────────────────────────────────┐
│                    TDD Cycle                             │
├─────────────────────────────────────────────────────────┤
│  1. 🔴 RED     → Write a failing test for new           │
│                   requirement                            │
│                                                         │
│  2. 🟢 GREEN   → Add minimum code to pass the test      │
│                                                         │
│  3. 🔵 REFACTOR → Improve code while keeping tests       │
│                   passing                                │
│                                                         │
│  4. 📝 COMMIT  → Save each small change separately       │
└─────────────────────────────────────────────────────────┘
```

### Git Commit History

The commit history reflects this incremental TDD workflow, with each commit representing a single TDD cycle.

---

## 🚀 Quick Start

### Prerequisites

- Dart SDK 3.0 or higher
- Git

### Installation

```bash
# Clone the repository
git clone https://github.com/your-username/string_calculator.git
cd string_calculator

# Install dependencies
dart pub get
```

### Running Tests

```bash
# Run all tests
dart test

# Run tests with verbose output
dart test -p reporter
```

---

## 📂 Project Structure

```
string_calculator/
├── lib/
│   └── string_calculator.dart    # Main implementation
├── test/
│   └── string_calculator_test.dart # Comprehensive test suite
├── pubspec.yaml                    # Dart package configuration
├── pubspec.lock                    # Dependency lock file
└── README.md                       # This file
```

---

## 💻 Usage Examples

### Basic Addition

```dart
import 'package:string_calculator/string_calculator.dart';

void main() {
  final calculator = StringCalculator();
  
  // Empty string returns 0
  print(calculator.add('')); // 0
  
  // Single number
  print(calculator.add('5')); // 5
  
  // Multiple numbers
  print(calculator.add('1,2,3,4,5')); // 15
  
  // With newlines
  print(calculator.add('1\n2,3')); // 6
  
  // Custom delimiter
  print(calculator.add('//;\n1;2;3')); // 6
}
```

### Error Handling

```dart
import 'package:string_calculator/string_calculator.dart';

void main() {
  final calculator = StringCalculator();
  
  try {
    calculator.add('-1,2,-3');
  } catch (e) {
    print(e); // "negative numbers not allowed -1,-3"
  }
}
```

---

## 🔮 Future Enhancements

- [ ] Support for multiplication, division, and subtraction
- [ ] Configurable maximum number threshold
- [ ] Alternative delimiter formats (`[***]`)
- [ ] Scientific notation support
- [ ] Performance benchmarks
- [ ] CI/CD pipeline integration

---

## 📝 Notes

> This project intentionally focuses on **clean code** and **TDD**, rather than framework or UI usage.

Dart was chosen to demonstrate language flexibility while following core software engineering practices. The project showcases:
- ✅ Clean, readable code
- ✅ Comprehensive test coverage
- ✅ Incremental development
- ✅ Proper error handling
- ✅ Version control best practices

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">

### Thank you for reviewing this assignment! 🎉

**Built with ❤️ using Dart and TDD**

**Jahid khan | developer.jahidkhan@gmail.com | +91-9111182311**

</div>

