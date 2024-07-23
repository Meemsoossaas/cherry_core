The core API for the Cherry application.
It contains all core functionalities to build the basis for the application.

## **Features**

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

## **Getting started**

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

## **Usage**

There are many use cases depending on the sub library.

### **core.dart**

#### Create asset classes

##### Step 1: Set paths

```yaml
flutter:
  assets:
    - icons/
    - images/
    - videos/
```

##### Step 2: Create `CherryAsset`'s

```dart
// Create a image asset
final CherryImageAsset image = CherryImageAsset(initialPath: 'assets/images/image.png');

// Create a icon asset
final CherryIconAsset icon = CherryIconAsset(initialPath: 'assets/icons/icon.png');

// Create a video asset
final CherryVideoAsset video = CherryVideoAsset(initialPath: 'assets/videos/video.png');
```
##### (Or create own classes of `CherryAsset`'s)

```dart
final class CherryCustomAsset extends CherryAsset {
  // Constructor(s)

  CherryCustomAsset({
    required super.initialPath,
    super.isHosted,
    super.onAssetChangedCallback,
    super.onAssetInitializedCallback,
  }) : super(assetType: AssetType.undefined,
    /* Make sure to set 'assetType' to 'AssetType.undefined'  */
  );

  // Method(s)
  CherryCustomAsset copyWith({
    String? initialPath,
    bool? isHosted,
    OnAssetChangedCallback? onAssetChangedCallback,
    OnAssetResetCallback? onAssetResetCallback,
    OnAssetInitializedCallback? onAssetInitializedCallback,
  }) =>
      CherryCustomAsset(
        initialPath: initialPath ?? this.initialPath,
        isHosted: isHosted ?? this.isHosted,
        onAssetChangedCallback: onAssetChangedCallback ?? this.onAssetChangedCallback,
        onAssetResetCallback: onAssetResetCallback ?? this.onAssetResetCallback,
        onAssetInitializedCallback: onAssetInitializedCallback ?? this.onAssetInitializedCallback,
      );
}
```

##### Step 3: Manage paths

```dart

final CherryImageAsset asset = CherryImageAsset(
  /* Set the first and initial path of the asset */
  initialPath: 'assets/images/image1.png',

  /* Set, if the asset is being hosted on the internet or on a server */
  isHosted: false,

  /* A function if the current path is being changed */
  onAssetChangedCallback: (String newPath) {
    if (newPath.contains('image1.png')) {
      print(1);
    } else if (newPath.contains('image2.png')) {
      print(2);
    } else if (newPath.contains('image3.png')) {
      print(3);
    }
  },

  /* A function when this is being reset */
  onAssetResetCallback: (List<String?> paths) {
    print('RESET!');
  },

  /* A function when this is being initialized */
  onAssetInitializedCallback: () {
    print('Initialized on ${DateTime.now()}');
  },
);
```

```dart
/* Prints -> Initialized on 2024-07-23 15:52:10.052431 */

asset.changePath('assets/images/image2.png'); // Prints 2

asset.changePath('assets/images/image3.png'); // Prints 3

asset.resetPath(); // Prints RESET!
```

### **navigation.dart**

### **services.dart**

### **settings.dart**

### **storage.dart**

### **user.dart**

## **Additional information**

NOTICE: This package is only usable, if it being utilized by official authorized developers, testers or
other related individuals.
