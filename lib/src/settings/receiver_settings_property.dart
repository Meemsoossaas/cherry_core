part of 'settings.dart';

/// {@template receiver_settings_property}
///
/// A class which compliments [ReceiverSettings] being a parallel sub child for handling properties
///
/// {@endtemplate}

final class ReceiverSettingsProperty<T> extends CherrySettingProperty<T> {
  // Constructors

  /// {@macro receiver_settings_property}
  ReceiverSettingsProperty(
    super.propertyName,
    super.onPropertyInitializedCallback, {
    super.onPropertyChangedCallback,
  });
}
