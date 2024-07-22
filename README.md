The core API for the Cherry application.
It contains all core functionalities to build the basis for the application.

## Features

This core package for the Cherry application contains multiple featured to build the core framework.

These are as follows:

- Essential extensions and extension types for objects of 'dart:core' (
  e.g. [String](https://api.flutter.dev/flutter/dart-core/String-class.html), [DateTime](https://api.flutter.dev/flutter/dart-core/DateTime-class.html), [List](https://api.flutter.dev/flutter/dart-core/List-class.html)
  etc.)
- Implementation for the main settings (Giver Settings, Receiver Settings, Chemistry Settings) + for
  their respected properties and parameters
- Containment of all necessary information for creating profiles
- Containment of basic map-like storage frameworks via [Hive](https://pub.dev/packages/hive)
- Frontend functionalities like navigation and asset management
- Building services (as singletons)
- Management for error handling and logging

## Getting started

Step 1: Add this to your dependencies:

```yaml
dependencies:
  cherry_core: ^latest-version
```

Step 2: Import this to the respected Dart file

```dart
// Import the whole package
import 'package:cherry_core/cherry_core.dart';

// Import a sub library of the package

// Import the 'core' library
import 'package:cherry_core/core.dart';

// Import the 'navigation' library
import 'package:cherry_core/navigation.dart';

// Import the 'services' library
import 'package:cherry_core/services.dart';

// Import the 'settings' library
import 'package:cherry_core/settings.dart';

// Import the 'storage' library
import 'package:cherry_core/storage.dart';

// Import the 'user' library
import 'package:cherry_core/user.dart';
```

## Usage

There are many use cases depending on the sub library.

### core.dart

### navigation.dart

### services.dart

### settings.dart

### storage.dart

### user.dart

## Additional information

NOTICE: This package is only usable, if it being utilized by official authorized developers, testers or
other related individuals.
