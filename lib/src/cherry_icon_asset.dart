part of '../cherry_core.dart';

final class CherryIconAsset extends CherryAsset {
  CherryIconAsset({
    required super.path,
    super.isHosted,
  }) : super(assetType: AssetType.icon);

  @override
  List<Object?> get props => [
        path,
        isHosted,
      ];
}
