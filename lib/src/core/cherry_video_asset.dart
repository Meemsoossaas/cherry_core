part of 'core.dart';

/// {@template cherry_video_asset}
///
/// A fitting class for video assets via [AssetType.video].
///
/// {@endtemplate}

final class CherryVideoAsset extends CherryAsset {
  // Constructors

  /// {@macro cherry_video_asset}
  CherryVideoAsset({
    required super.path,
    super.isHosted,
    super.onAssetChangedCallback,
    super.onAssetInitializedCallback,
  }) : super(
          assetType: AssetType.video,
        );

  // Methods

  /// {@template cherry_video_asset_copy_with}
  ///
  /// Copys this with the additional alternate parameters.
  ///
  /// {@endtemplate}
  CherryVideoAsset copyWith({
    String? path,
    bool? isHosted,
    OnAssetChangedCallback? onAssetChangedCallback,
    OnAssetInitializedCallback? onAssetInitializedCallback,
  }) =>
      CherryVideoAsset(
        path: path ?? super.path,
        isHosted: isHosted ?? super.isHosted,
        onAssetChangedCallback:
        onAssetChangedCallback ?? super.onAssetChangedCallback,
        onAssetInitializedCallback:
        onAssetInitializedCallback ?? super.onAssetInitializedCallback,
      );
}
