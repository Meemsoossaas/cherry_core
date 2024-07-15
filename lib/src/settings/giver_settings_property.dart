part of 'settings.dart';

/// {@template giver_settings_property}
///
/// A class which compliments [GiverSettings] being a parallel sub child for handling properties
///
/// {@endtemplate}

final class GiverSettingsProperty<T extends dynamic>
    extends CherrySettingProperty<T> {
  // Constructors

  /// {@macro giver_settings_property}
  GiverSettingsProperty(
    super.propertyName,
    super.onPropertyInitializedCallback, {
    super.onPropertyChangedCallback,
  });

  // Methods

  /// {@template giver_settings_property_copy_with}
  ///
  /// Copys this with the additional alternate parameters
  ///
  /// {@endtemplate}
  GiverSettingsProperty<T> copyWith({
    String? propertyName,
    OnPropertyInitializedCallback<T>? onPropertyInitializedCallback,
    OnPropertyChangedCallback<T>? onPropertyChangedCallback,
  }) =>
      GiverSettingsProperty<T>(
        propertyName ?? this.propertyName,
        onPropertyInitializedCallback ?? this.onPropertyInitializedCallback,
        onPropertyChangedCallback:
            onPropertyChangedCallback ?? this.onPropertyChangedCallback,
      );
}
