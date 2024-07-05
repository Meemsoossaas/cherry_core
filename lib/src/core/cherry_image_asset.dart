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
}
