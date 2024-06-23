part of '../cherry_core.dart';

abstract base class CherryAsset extends CherryCore {
  final String path;
  final AssetType assetType;
  final bool isHosted;

  CherryAsset({
    required this.path,
    required this.assetType,
    this.isHosted = false,
  }) : assert(
          (path.contains('http') && isHosted) ||
              !(path.contains('http') && isHosted),
          "'path' and 'isHosted' do not compliment the given parameter configuration",
        );
}
