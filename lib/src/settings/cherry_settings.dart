part of 'settings.dart';

/// {@template cherry_settings}
///
/// A class which sets the universal framework for all settings which will be contained depending on [CherryUserMode]
///
/// {@endtemplate}

sealed class CherrySettings<T extends CherrySettingProperty>
    extends CherryCore {
  // Constructors

  /// {@macro cherry_settings}
  CherrySettings();

  // Getters & Setters

  /// {@template cherry_settings_defaultSettings}
  ///
  /// Gets the default settings which sets the reference
  ///
  /// {@endtemplate}
  CherrySettings<T> get defaultSettings;

  /// {@template cherry_settings_settingsId}
  ///
  /// Gets a parallel id to [id] which is unique to this being a settings framework
  ///
  /// {@endtemplate}
  String get settingsId => Uuid().v1();
}
