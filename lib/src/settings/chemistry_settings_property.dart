part of 'settings.dart';

/// {@template chemistry_settings_property}
///
/// A class which compliments [ChemistrySettings] being a parallel sub child for handling properties.
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

  // Methods

  /// {@template chemistry_settings_property_copy_with}
  ///
  /// Copys this with the additional alternate parameters.
  ///
  /// {@endtemplate}
  ChemistrySettingsProperty<T> copyWith({
    String? propertyName,
    OnPropertyChangedCallback<T>? onPropertyChangedCallback,
    OnPropertyInitializedCallback<T>? onPropertyInitializedCallback,
  }) =>
      ChemistrySettingsProperty<T>(
        propertyName ?? this.propertyName,
        onPropertyInitializedCallback ?? this.onPropertyInitializedCallback,
        onPropertyChangedCallback:
            onPropertyChangedCallback ?? this.onPropertyChangedCallback,
      );
}
