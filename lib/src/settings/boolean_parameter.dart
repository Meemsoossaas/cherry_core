part of 'settings.dart';

/// {@template boolean_parameter}
///
/// A class which represents a settings parameter which contains a [bool] value.
/// This means obviously that the values consists of `true` and `false` (`null` not included)
///
/// {@endtemplate}

final class BooleanParameter extends CherrySettingParameter<bool> {
  // Constructors

  /// {@macro boolean_parameter}
  BooleanParameter(
    super._list, {
    super.defaultOption,
    required super.onChangedCallback,
  }) : assert(
          defaultOption == 0 || defaultOption == 1,
          "'defaultOption' must represent the integer value of a boolean",
        );

  // Overrides

  @override
  ParameterType get type => ParameterType.boolean;
}
