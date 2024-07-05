part of 'settings.dart';

/// {@template giver_settings_property}
///
/// A class which compliments [GiverSettings] being a parallel sub child for handling properties
///
/// {@endtemplate}

final class GiverSettingsProperty<T> extends CherrySettingProperty {
  // Constructors

  /// {@macro giver_settings_property}
  GiverSettingsProperty(
    super.propertyName,
    super.onPropertyInitializedCallback, {
    super.onPropertyChangedCallback,
  });
}
