part of 'settings.dart';

/// {@template on_property_changed_callback}
///
/// A function being utilized if a descendant of [CherrySettingProperty]'s property value is being changed.
///
/// {@endtemplate}
typedef OnPropertyChangedCallback<T> = void Function(
  T newProperty,
);

/// {@template on_property_initialized_callback}
///
/// A function being if a descendant of [CherrySettingProperty] is being initialized.
///
/// {@endtemplate}
typedef OnPropertyInitializedCallback<T> = T Function();
