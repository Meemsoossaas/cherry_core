part of 'core.dart';

/// {@template cherry_image_asset}
///
/// A fitting class for image assets via [AssetType.image].
///
/// {@endtemplate}

final class CherryImageAsset extends CherryAsset {
  // Constructors

  /// {@macro cherry_image_asset}
  CherryImageAsset({
    required super.initialPath,
    super.isHosted,
    super.onAssetChangedCallback,
    super.onAssetResetCallback,
    super.onAssetInitializedCallback,
  }) : super(assetType: AssetType.image);

  // Methods

  /// {@template cherry_image_asset_copy_with}
  ///
  /// Copys this with the additional alternate parameters.
  ///
  /// {@endtemplate}
  CherryImageAsset copyWith({
    String? initialPath,
    bool? isHosted,
    OnAssetChangedCallback? onAssetChangedCallback,
    OnAssetResetCallback? onAssetResetCallback,
    OnAssetInitializedCallback? onAssetInitializedCallback,
  }) =>
      CherryImageAsset(
        initialPath: initialPath ?? this.initialPath,
        isHosted: isHosted ?? this.isHosted,
        onAssetChangedCallback:
            onAssetChangedCallback ?? this.onAssetChangedCallback,
        onAssetResetCallback: onAssetResetCallback ?? this.onAssetResetCallback,
        onAssetInitializedCallback:
            onAssetInitializedCallback ?? this.onAssetInitializedCallback,
      );
}
