part of 'storage.dart';

/// {@template crud_handler}
///
/// A mixin class which handles implements basic CRUD functionalities to [Hive]
///
/// {@endtemplate}

abstract base mixin class CrudHandler {
  // Static Methods

  /// {@template crud_handler_create}
  ///
  /// Creates a new [Box]
  ///
  /// {@endtemplate}
  static Box<E> create<E>(String name) => Hive.box<E>(name);

  // Constructors

  /// {@macro crud_handler}
  CrudHandler();

  // Methods

  /// {@template crud_handler_read}
  ///
  /// Gets a value of [T] from a database ([Box])
  ///
  /// {@endtemplate}
  T read<T>(String key);

  /// {@template crud_handler_update}
  ///
  /// Updates the value of [key] from a database with [value]
  ///
  /// {@endtemplate}
  void update<T>(String key, T value);

  /// {@template crud_handler_delete}
  ///
  /// Deletes the value of [key] from a database
  ///
  /// {@endtemplate}
  void delete(String key);
}
