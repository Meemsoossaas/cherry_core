part of 'core.dart';

/// {@template cherry_asset}
///
/// A class for the framework of data for all assets based on [AssetType].
///
/// {@endtemplate}

abstract base class CherryAsset extends CherryCore {
  // Properties

  /// {@template cherry_asset_previous_paths}
  ///
  /// Gets all previous paths.
  /// `previousPaths[0]` being the newest and [path] the oldest one
  /// [pushFront] (from [CherryCoreListExtensions]) will be called when a new path is being added to this.
  ///
  /// {@endtemplate}
  final List<String?> _previousPaths;

  /// {@template cherry_asset_path}
  ///
  /// Finalizes the default path of the file location of the asset (e.g. 'assets/images/funny_image.png').
  ///
  /// {@endtemplate}
  final String initialPath;

  /// {@template cherry_asset_asset_type}
  ///
  /// Finalizes the type of asset for API identification for construction.
  ///
  /// {@endtemplate}
  final AssetType assetType;

  /// {@template cherry_asset_is_hosted}
  ///
  /// Finalizes, if the asset is being hosted from an online server under http services.
  ///
  /// {@endtemplate}
  final bool isHosted;

  /// {@template cherry_asset_on_asset_changed_callback}
  ///
  /// A function which will be called when [path] changes (via [changePath]).
  ///
  /// {@endtemplate}
  final OnAssetChangedCallback? onAssetChangedCallback;

  /// {@template cherry_asset_on_asset_reset_callback}
  ///
  /// A function which will be called if [resetPath] is being invoked.
  ///
  /// {@endtemplate}
  final OnAssetResetCallback? onAssetResetCallback;

  /// {@template cherry_asset_on_asset_initialized_callback}
  ///
  /// A function which will call when this is being initialized.
  ///
  /// {@endtemplate}
  final OnAssetInitializedCallback? onAssetInitializedCallback;

  // Constructors

  /// {@macro cherry_asset}
  CherryAsset({
    required this.initialPath,
    required this.assetType,
    this.isHosted = false,
    this.onAssetChangedCallback,
    this.onAssetResetCallback,
    this.onAssetInitializedCallback,
  })  : assert(
          initialPath.isNotEmpty,
          'path cannot be empty',
        ),
        assert(
          (initialPath.contains('http') && isHosted) ||
              !(initialPath.contains('http') && isHosted),
          "'path' and 'isHosted' do not compliment the given parameter configuration",
        ),
        _previousPaths = <String?>[] {
    _previousPaths.add(initialPath);
    if (onAssetInitializedCallback != null) onAssetInitializedCallback!();
  }

  // Getters

  /// {@template cherry_asset_current_path}
  ///
  /// Gets the first index of [previousPaths] being the newest path.
  ///
  /// {@endtemplate}
  String get currentPath =>
      _previousPaths[_previousPaths.length - 1] ?? initialPath;

  // Methods

  /// {@template cherry_asset_change_path}
  ///
  /// Changes the path of this and calls [onAssetChangedCallback], if not `null`.
  ///
  /// {@endtemplate}
  void changePath(String newPath) => _changePath(newPath);

  void _changePath(String newPath) {
    _previousPaths.add(newPath);
    if (onAssetChangedCallback != null) onAssetChangedCallback!(newPath);
  }

  /// {@template cherry_asset_reset_path}
  ///
  /// Clears [previousPaths] and sets the current path to [initialPath].
  ///
  /// {@endtemplate}
  void resetPath() => _resetPath();

  void _resetPath() {
    _previousPaths.clear();
    _previousPaths.add(initialPath);
    if (onAssetResetCallback != null) onAssetResetCallback!(_previousPaths);
  }

  // Overrides

  @override
  List<Object?> get props =>
      <Object?>[
        initialPath,
        assetType,
        isHosted,
        onAssetChangedCallback,
        onAssetInitializedCallback,
      ] +
      super.props;
}
