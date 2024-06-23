part of '../cherry_core.dart';

final class CherryVideoAsset extends CherryAsset {
  CherryVideoAsset({
    required super.path,
    super.isHosted,
  }) : super(assetType: AssetType.video);

  @override
  List<Object?> get props => [
        path,
        isHosted,
      ];
}
