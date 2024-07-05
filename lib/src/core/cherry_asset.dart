part of 'core.dart';

/// {@template cherry_asset}
///
/// A class for the framework of data for all assets based on [AssetType]
///
/// {@endtemplate}

abstract base class CherryAsset extends CherryCore {
  // Properties

  /// {@template cherry_asset_path}
  ///
  /// Finalizes the default path of the file location of the asset (e.g. 'assets/images/funny_image.png')
  ///
  /// {@endtemplate}
  final String path;

  /// {@template cherry_asset_asset_type}
  ///
  /// Finalizes the type of asset for API identification for construction
  ///
  /// {@endtemplate}
  final AssetType assetType;

  /// {@template cherry_asset_is_hosted}
  ///
  /// Finalizes if the asset is being hosted from an online server under http services
  ///
  /// {@endtemplate}
  final bool isHosted;

  /// {@template cherry_asset_on_asset_changed_callback}
  ///
  /// A function which will be called when [path] changes
  ///
  /// {@endtemplate}
  final OnAssetChangedCallback? onAssetChangedCallback;

  /// {@template cherry_asset_on_asset_initialized_callback}
  ///
  /// A function which will call when this is being initialized
  ///
  /// {@endtemplate}
  final OnAssetInitializedCallback? onAssetInitializedCallback;

  // Constructors

  /// {@macro cherry_asset}
  CherryAsset({
    required this.path,
    required this.assetType,
    this.isHosted = false,
    this.onAssetChangedCallback,
    this.onAssetInitializedCallback,
  })  : assert(
          path.isNotEmpty,
          'path cannot be empty',
        ),
        assert(
          (path.contains('http') && isHosted) ||
              !(path.contains('http') && isHosted),
          "'path' and 'isHosted' do not compliment the given parameter configuration",
        ) {
    if (onAssetInitializedCallback != null) {
      onAssetInitializedCallback!();
    }
  }

  // Getters

  /// {@template cherry_asset_previous_paths}
  ///
  /// Gets all previous paths.
  /// `previousPaths[0]` being the newest and [path] the oldest one
  ///
  /// {@endtemplate}
  List<String?> get previousPaths => [
        path,
      ];

  /// {@template cherry_asset_current_path}
  ///
  /// Gets the first index of [previousPaths] being the newest path
  ///
  /// {@endtemplate}
  String get currentPath => previousPaths[0] ?? path;

  // Methods

  /// {@template cherry_asset_change_path}
  ///
  /// Changes the path of this and calls [onAssetChangedCallback], if not `null`
  ///
  /// {@endtemplate}
  void changePath(String newPath) => _changePath(newPath);

  void _changePath(String newPath) {
    previousPaths.pushFront(newPath);
    if (onAssetChangedCallback != null) {
      onAssetChangedCallback!(newPath);
    }
  }

  // Overrides

  @override
  List<Object?> get props => [
        path,
        assetType,
        isHosted,
        onAssetChangedCallback,
        onAssetInitializedCallback,
      ];
}
