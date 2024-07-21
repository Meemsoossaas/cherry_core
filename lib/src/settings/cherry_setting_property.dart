part of 'settings.dart';

/// {@template cherry_setting_property}
///
/// A class where it's descendant serve as a setting property based on the different modes ([CherryUserMode]).
///
/// {@endtemplate}

sealed class CherrySettingProperty<T extends dynamic> extends CherryCore {
  // Properties

  /// {@template cherry_setting_property_property_name}
  ///
  /// Finalizes the name of the property.
  ///
  /// {@endtemplate}
  final String propertyName;

  /// {@template cherry_setting_property_values}
  ///
  /// Finalizes a list full of the values.
  ///
  /// {@endtemplate}
  final List<T> values;

  /// {@template cherry_setting_property_on_property_changed_callback}
  ///
  /// A function which will be called when the property's value is being changed.
  ///
  /// {@endtemplate}
  final OnPropertyChangedCallback<T>? onPropertyChangedCallback;

  /// {@template cherry_setting_property_on_property_initialized_callback}
  ///
  /// A function which will be called when this is being initialized.
  /// It returns default value of [T].
  ///
  /// {@endtemplate}
  final OnPropertyInitializedCallback<T> onPropertyInitializedCallback;

  // Constructors

  /// {@macro cherry_setting_property}
  CherrySettingProperty(
    this.propertyName,
    this.onPropertyInitializedCallback, {
    this.onPropertyChangedCallback,
  }) : values = List.empty(
          growable: true,
        ) {
    values.pushFront(
      onPropertyInitializedCallback(),
    );
  }

  // Getters & Setters

  /// {@template cherry_setting_property_currentValue}
  ///
  /// Get the current value which is the first index of [values].
  ///
  /// {@endtemplate}
  T get currentValue => values[0];

  // Overrides

  @override
  List<Object?> get props =>
      <Object?>[
        propertyName,
        onPropertyChangedCallback,
        onPropertyInitializedCallback,
      ] +
      super.props;
}
