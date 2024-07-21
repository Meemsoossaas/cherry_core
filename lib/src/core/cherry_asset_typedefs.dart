part of 'core.dart';

/// {@template on_asset_changed_callback}
///
/// A function which will be called, if a descendant of [CherryAsset]'s path is being changed.
/// The property `path` is being viewed as the 'source' of the assets information.
///
/// {@endtemplate}
typedef OnAssetChangedCallback = void Function(
  String newPath,
);

/// {@template on_asset_initialized_callback}
///
/// A function which be called, if a descendant of [CherryAsset] is being initialized.
///
/// {@endtemplate}
typedef OnAssetInitializedCallback = void Function();
