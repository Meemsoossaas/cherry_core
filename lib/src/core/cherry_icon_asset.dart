part of 'core.dart';

/// {@template cherry_icon_asset}
///
/// The fitting class for icon assets via [AssetType.icon].
///
/// {@endtemplate}

final class CherryIconAsset extends CherryAsset {
  // Constructors

  /// {@macro cherry_icon_asset}
  CherryIconAsset({
    required super.path,
    super.isHosted,
    super.onAssetChangedCallback,
    super.onAssetInitializedCallback,
  }) : super(
          assetType: AssetType.icon,
        );

  // Methods

  /// {@template cherry_icon_asset_copy_with}
  ///
  /// Copys this with the additional alternate parameters.
  ///
  /// {@endtemplate}
  CherryIconAsset copyWith({
    String? path,
    bool? isHosted,
    OnAssetChangedCallback? onAssetChangedCallback,
    OnAssetInitializedCallback? onAssetInitializedCallback,
  }) =>
      CherryIconAsset(
        path: path ?? super.path,
        isHosted: isHosted ?? super.isHosted,
        onAssetChangedCallback:
            onAssetChangedCallback ?? super.onAssetChangedCallback,
        onAssetInitializedCallback:
            onAssetInitializedCallback ?? super.onAssetInitializedCallback,
      );
}
