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
    required super.initialPath,
    super.isHosted,
    super.onAssetChangedCallback,
    super.onAssetResetCallback,
    super.onAssetInitializedCallback,
  }) : super(assetType: AssetType.video);

  // Methods

  /// {@template cherry_video_asset_copy_with}
  ///
  /// Copys this with the additional alternate parameters.
  ///
  /// {@endtemplate}
  CherryVideoAsset copyWith({
    String? initialPath,
    bool? isHosted,
    OnAssetChangedCallback? onAssetChangedCallback,
    OnAssetResetCallback? onAssetResetCallback,
    OnAssetInitializedCallback? onAssetInitializedCallback,
  }) =>
      CherryVideoAsset(
        initialPath: initialPath ?? this.initialPath,
        isHosted: isHosted ?? this.isHosted,
        onAssetChangedCallback:
            onAssetChangedCallback ?? this.onAssetChangedCallback,
        onAssetResetCallback: onAssetResetCallback ?? this.onAssetResetCallback,
        onAssetInitializedCallback:
            onAssetInitializedCallback ?? this.onAssetInitializedCallback,
      );
}
