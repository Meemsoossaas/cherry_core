part of 'storage.dart';

/// {@template crud_handler}
///
/// A mixin class which handles implements basic CRUD functionalities to [Hive].
///
/// {@endtemplate}

abstract base mixin class CherryCoreCrudHandler {
  // Static Properties

  /// {@template crud_handler_default_giver_settings}
  ///
  /// The name for the [Box] of [CherryUserMode.giver] containing all the default settings.
  ///
  /// {@endtemplate}
  static const String defaultGiverSettings = 'default_giver_settings';

  /// {@template crud_handler_giver_settings}
  ///
  /// The name for the [Box] of [CherryUserMode.giver].
  ///
  /// {@endtemplate}
  static const String giverSettings = 'giver_settings';

  /// {@template crud_handler_default_receiver_settings}
  ///
  /// The name for the [Box] of [CherryUserMode.receiver] containing all the default settings.
  ///
  /// {@endtemplate}
  static const String defaultReceiverSettings = 'default_receiver_settings';

  /// {@template crud_handler_receiver_settings}
  ///
  /// The name for the [Box] of [CherryUserMode.receiver].
  ///
  /// {@endtemplate}
  static const String receiverSettings = 'receiver_settings';

  /// {@template crud_handler_chemistry_settings}
  ///
  /// The name for the [Box] of [CherryUserMode.chemistry] containing all the default settings.
  ///
  /// {@endtemplate}
  static const String defaultChemistrySettings = 'default_chemistry_settings';

  /// {@template crud_handler_chemistry_settings}
  ///
  /// The name for the [Box] of [CherryUserMode.chemistry].
  ///
  /// {@endtemplate}
  static const String chemistrySettings = 'chemistry_settings';

  // Static Methods

  /// {@template crud_handler_create}
  ///
  /// Creates a new [Box].
  ///
  /// {@endtemplate}
  static Future<Box<E>> create<E>(String name) async => await _create(name);

  static Future<Box<E>> _create<E>(String name) async =>
      await Hive.openBox<E>(name);

  /// {@template crud_handler_create_initialize_settings}
  ///
  /// Returns a [Map] of boxes (Mostly it will be [Box] and [CherryCoreBox]).
  ///
  /// {@endtemplate}
  static Future<Map<String, T>> initializeSettings<T>({
    required OnCherryBoxInitializedCallback<T> initCallback,
  }) async =>
      await _initializeSettings(initCallback: initCallback);

  static Future<Map<String, T>> _initializeSettings<T>({
    required Future<T> Function(String boxName) initCallback,
  }) async {
    Hive.init('hive');
    final map = <String, T>{};
    for (final boxName in boxNames) {
      map[boxName] = await initCallback(boxName);
    }
    return map;
  }

  // Constructors

  /// {@macro crud_handler}
  const CherryCoreCrudHandler();

  // Static Getters & Setters

  static List<String> get boxNames => [
        defaultGiverSettings,
        giverSettings,
        defaultReceiverSettings,
        receiverSettings,
        defaultChemistrySettings,
        chemistrySettings,
      ];

  // Methods

  /// {@template crud_handler_read}
  ///
  /// Gets a value of [T] from a database ([Box]).
  ///
  /// {@endtemplate}
  T read<T>(String key);

  /// {@template crud_handler_update}
  ///
  /// Updates the value of [key] from a database with [value].
  ///
  /// {@endtemplate}
  Future<void> update<T>(String key, T value);

  /// {@template crud_handler_delete}
  ///
  /// Deletes the value of [key] from a database.
  ///
  /// {@endtemplate}
  Future<void> delete(String key);
}
