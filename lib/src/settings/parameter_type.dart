part of 'settings.dart';

/// {@template parameter_type}
///
/// Contains all the type of parameters which are related to the descendants of [CherrySettingParameter]
///
/// {@endtemplate}

enum ParameterType {
  // Values

  /// {@template parameter_type_option}
  ///
  /// The parameter contains options
  ///
  /// {@endtemplate}
  option(type: String),

  /// {@template parameter_type_enumeration}
  ///
  /// The parameter contains a predeclared enumeration with it's values
  ///
  /// {@endtemplate}
  enumeration(type: Enum),

  /// {@template parameter_type_input}
  ///
  /// The parameter handles input and contains input values
  ///
  /// {@endtemplate}
  input(type: String),

  /// {@template parameter_type_asset}
  ///
  /// The parameter handles asset inputs
  ///
  /// {@endtemplate}
  asset(type: CherryAsset),

  /// {@template parameter_type_boolean}
  ///
  /// The parameter acts as a switch
  ///
  /// {@endtemplate}
  boolean(type: bool);

  // Properties

  /// {@template parameter_type_type}
  ///
  /// The [Type] to be returned and utilized as a generic for [CherrySettingParameter]
  ///
  /// {@endtemplate}
  final Type type;

  // Constructor

  /// {@macro parameter_type}
  const ParameterType({
    required this.type,
  });
}
