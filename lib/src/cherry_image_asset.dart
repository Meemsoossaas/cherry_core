part of '../cherry_core.dart';

final class CherryImageAsset extends CherryAsset {
  CherryImageAsset({
    required super.path,
    required super.isHosted,
  }) : super(assetType: AssetType.image);

  @override
  List<Object?> get props => [
        path,
        isHosted,
      ];
}
