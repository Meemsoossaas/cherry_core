part of 'core.dart';

/// {@template cherry_video_asset}
///
/// A fitting class for video assets via [AssetType.video]
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
}
