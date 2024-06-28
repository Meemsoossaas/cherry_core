part of 'core.dart';

/// {@template cherry_icon_asset}
///
/// The fitting class for icon assets via [AssetType.icon]
///
/// {@endtemplate}

final class CherryIconAsset extends CherryAsset {
  // Constructors

  /// {@macro cherry_icon_asset}
  CherryIconAsset({
    required super.path,
    super.isHosted,
  }) : super(assetType: AssetType.icon);

  // Overrides

  @override
  List<Object?> get props => [
        path,
        isHosted,
      ];
}
