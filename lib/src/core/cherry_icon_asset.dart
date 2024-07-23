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
    required super.initialPath,
    super.isHosted,
    super.onAssetChangedCallback,
    super.onAssetResetCallback,
    super.onAssetInitializedCallback,
  }) : super(assetType: AssetType.icon);

  // Methods

  /// {@template cherry_icon_asset_copy_with}
  ///
  /// Copys this with the additional alternate parameters.
  ///
  /// {@endtemplate}
  CherryIconAsset copyWith({
    String? initialPath,
    bool? isHosted,
    OnAssetResetCallback? onAssetResetCallback,
    OnAssetChangedCallback? onAssetChangedCallback,
    OnAssetInitializedCallback? onAssetInitializedCallback,
  }) =>
      CherryIconAsset(
        initialPath: initialPath ?? this.initialPath,
        isHosted: isHosted ?? this.isHosted,
        onAssetChangedCallback:
            onAssetChangedCallback ?? this.onAssetChangedCallback,
        onAssetResetCallback:
            onAssetResetCallback ?? this.onAssetResetCallback,
        onAssetInitializedCallback:
            onAssetInitializedCallback ?? this.onAssetInitializedCallback,
      );
}
