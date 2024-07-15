part of 'storage.dart';

/// {@template cherry_core_property_handler}
///
/// A class which handles functionalities on properties based on [CherrySettingProperty]
///
/// {@endtemplate}

abstract base mixin class CherryCorePropertyHandler {
  // Constructors

  /// {@macro cherry_core_property_handler}
  const CherryCorePropertyHandler();

  // Methods

  /// {@template cherry_core_property_handler_add_property}
  ///
  /// Adds a property.
  /// [propertyKey] being the name of the property
  /// [propertyValue] being the value of the property (which can be/defaults to `null`)
  ///
  /// {@endtemplate}
  void addProperty<U>(
    String propertyKey, [
    U? propertyValue,
  ]);

  /// {@template cherry_core_property_handler_get_property}
  ///
  /// Gets the value of [T] at [propertyKey]
  ///
  /// {@endtemplate}
  U? getProperty<U>(String propertyKey);

  /// {@template cherry_core_property_handler_update_property}
  ///
  /// Updates the property (with the name '[propertyKey]') with [propertyValue]
  ///
  /// {@endtemplate}
  void updateProperty(String propertyKey, String propertyValue);

  /// {@template cherry_core_property_handler}
  ///
  /// Sets the given property's ([propertyKey]) value to `null`
  ///
  /// {@endtemplate}
  void makePropertyNullable(String propertyKey);
}
