part of 'settings.dart';

/// {@template cherry_settings}
///
/// A class which sets the universal framework for all settings which will be contained depending on [CherryUserMode]
///
/// {@endtemplate}

sealed class CherrySettings<T extends CherrySettingProperty> extends CherryCore
    with CherryCoreCrudHandler, CherryCorePropertyHandler {
  // Properties

  /// {@template cherry_settings_settings_map}
  ///
  /// The map containing all settings.
  /// [String] being the name of the property
  /// `dynamic` being the value of the affiliated property
  ///
  /// {@endtemplate}
  final Map<String, dynamic> settingsMap;

  /// {@template cherry_settings_box}
  ///
  /// Finalizes the [Box] affiliated to the descendant of this
  ///
  /// {@endtemplate}
  final String boxName;

  // Constructors

  /// {@macro cherry_settings}
  CherrySettings({
    required this.boxName,
    required this.settingsMap,
  });

  // Getters & Setters

  /// {@template cherry_settings_default_settings}
  ///
  /// Gets the default settings which sets the reference
  ///
  /// {@endtemplate}
  CherrySettings<T> get defaultSettings;

  /// {@template cherry_settings_settings_id}
  ///
  /// Gets a parallel id to [id] which is unique to this being a settings framework
  ///
  /// {@endtemplate}
  String get settingsId => uuid.v1();

  /// {@template cherry_settings}
  ///
  /// The official box of this via [Hive]
  ///
  /// {@endtemplate}
  Box get box => Hive.box(boxName);

  /// {@template cherry_settings_initialized}
  ///
  /// Gets a [bool] to ensure, if the [Box] has been initialized
  ///
  /// {@endtemplate}
  Future<bool> get initialized async => await Hive.boxExists(box.name);

  // Overrides

  @override
  List<Object?> get props => [
        boxName,
        settingsMap,
      ];

  @override
  Future<void> delete(String key) async => await _delete(key);

  Future<void> _delete(String key) async => await box.delete(key);

  @override
  U read<U>(String key) => _read<U>(key);

  U _read<U>(String key) => box.get(key);

  @override
  Future<void> update<U>(String key, U value) async => await _update<U>(
        key,
        value,
      );

  Future<void> _update<U>(String key, U value) async => await box.put(
        key,
        value,
      );

  @override
  void addProperty<U>(String propertyKey, [U? propertyValue]) =>
      _addProperty<U>(
        propertyKey,
        propertyValue,
      );

  void _addProperty<U>(String propertyKey, [U? propertyValue]) {
    settingsMap[propertyKey] = propertyValue;
  }

  @override
  U? getProperty<U>(String propertyKey) => _getProperty<U>(propertyKey);

  U? _getProperty<U>(String propertyKey) => settingsMap[propertyKey] as U;

  @override
  void updateProperty(String propertyKey, String propertyValue) =>
      _updateProperty(
        propertyKey,
        propertyValue,
      );

  void _updateProperty(String propertyKey, String propertyValue) {
    if (settingsMap[propertyKey] == null) {
      throw CherryCoreErrorException(
        '',
        instanceType: CherrySettings,
      );
    }
    settingsMap[propertyKey] = propertyValue;
  }

  @override
  void makePropertyNullable(String propertyKey) => _makePropertyNullable(
        propertyKey,
      );

  void _makePropertyNullable(String propertyKey) {
    settingsMap[propertyKey] = null;
  }
}
