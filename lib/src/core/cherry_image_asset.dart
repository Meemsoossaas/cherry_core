part of 'core.dart';

/// {@template cherry_image_asset}
///
/// A fitting class for image assets via [AssetType.image]
///
/// {@endtemplate}

final class CherryImageAsset extends CherryAsset {
  // Constructors

  /// {@macro cherry_image_asset}
  CherryImageAsset({
    required super.path,
    required super.isHosted,
    super.onAssetChangedCallback,
    super.onAssetInitializedCallback,
  }) : super(
          assetType: AssetType.image,
        );

  // Methods

  /// {@template cherry_image_asset_copy_with}
  ///
  /// Copys this with the additional alternate parameters
  ///
  /// {@endtemplate}
  CherryImageAsset copyWith({
    String? path,
    bool? isHosted,
    OnAssetChangedCallback? onAssetChangedCallback,
    OnAssetInitializedCallback? onAssetInitializedCallback,
  }) =>
      CherryImageAsset(
        path: path ?? super.path,
        isHosted: isHosted ?? super.isHosted,
        onAssetChangedCallback:
        onAssetChangedCallback ?? super.onAssetChangedCallback,
        onAssetInitializedCallback:
        onAssetInitializedCallback ?? super.onAssetInitializedCallback,
      );
}
