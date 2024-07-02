part of 'core.dart';

/// {@template cherry_asset}
///
/// A class for the framework of data for all assets based on [AssetType]
///
/// {@endtemplate}

abstract base class CherryAsset extends CherryCore {
  // Properties

  /// {@template cherry_asset_path}
  ///
  /// Finalizes the path of the file location of the asset (e.g. 'assets/images/funny_image.png')
  ///
  /// {@endtemplate}
  final String path;

  /// {@template cherry_asset_asset_type}
  ///
  /// Finalizes the type of asset for API identification for construction
  ///
  /// {@endtemplate}
  final AssetType assetType;

  /// {@template cherry_asset_is_hosted}
  ///
  /// Finalizes if the asset is being hosted from an online server under http services
  ///
  /// {@endtemplate}
  final bool isHosted;

  // Constructors

  /// {@macro cherry_asset}
  CherryAsset({
    required this.path,
    required this.assetType,
    this.isHosted = false,
  }) : assert(
          (path.contains('http') && isHosted) ||
              !(path.contains('http') && isHosted),
          "'path' and 'isHosted' do not compliment the given parameter configuration",
        );

  // Overrides

  @override
  List<Object?> get props => [
        path,
        assetType,
        isHosted,
      ];
}
