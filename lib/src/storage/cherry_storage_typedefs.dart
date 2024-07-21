part of 'storage.dart';

/// {@template on_cherry_box_initialized_callback}
///
/// A function for when [CherryCoreBox] is being initialized.
///
/// {@endtemplate}
typedef OnCherryBoxInitializedCallback<T> = Future<T> Function(String boxName);
