part of 'core.dart';

/// {@template asset_type}
///
///
///
/// {@endtemplate}

enum AssetType {
  /// {@template asset_type_image}
  ///
  /// The asset is a image
  ///
  /// {@endtemplate}
  image(),

  /// {@template asset_type_icon}
  ///
  /// The asset is an icon
  ///
  /// {@endtemplate}
  icon(),

  /// {@template asset_type_video}
  ///
  /// The asset is a video
  ///
  /// {@endtemplate}
  video(),

  /// {@template asset_type_undefined}
  ///
  /// The asset is undefined
  ///
  /// {@endtemplate}
  undefined();

  /// {@macro asset_type}
  const AssetType();
}
