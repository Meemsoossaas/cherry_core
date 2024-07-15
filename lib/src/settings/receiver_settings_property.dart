part of 'settings.dart';

/// {@template receiver_settings_property}
///
/// A class which compliments [ReceiverSettings] being a parallel sub child for handling properties
///
/// {@endtemplate}

final class ReceiverSettingsProperty<T extends dynamic>
    extends CherrySettingProperty<T> {
  // Constructors

  /// {@macro receiver_settings_property}
  ReceiverSettingsProperty(
    super.propertyName,
    super.onPropertyInitializedCallback, {
    super.onPropertyChangedCallback,
  });

  // Methods

  /// {@template receiver_settings_property_copy_with}
  ///
  /// Copys this with the additional alternate parameters
  ///
  /// {@endtemplate}
  ReceiverSettingsProperty<T> copyWith({
    String? propertyName,
    OnPropertyInitializedCallback<T>? onPropertyInitializedCallback,
    OnPropertyChangedCallback<T>? onPropertyChangedCallback,
  }) =>
      ReceiverSettingsProperty<T>(
        propertyName ?? this.propertyName,
        onPropertyInitializedCallback ?? this.onPropertyInitializedCallback,
        onPropertyChangedCallback:
            onPropertyChangedCallback ?? this.onPropertyChangedCallback,
      );
}
