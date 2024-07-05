part of 'settings.dart';

/// {@template chemistry_settings_property}
///
/// A class which compliments [ChemistrySettings] being a parallel sub child for handling properties
///
/// {@endtemplate}

final class ChemistrySettingsProperty<T extends dynamic>
    extends CherrySettingProperty<T> {
  // Constructors

  /// {@macro chemistry_settings_property}
  ChemistrySettingsProperty(
    super.propertyName,
    super.onPropertyInitializedCallback, {
    super.onPropertyChangedCallback,
  });
}
