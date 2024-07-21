part of 'settings.dart';

/// {@template boolean_parameter}
///
/// A class which represents a settings parameter which contains a [bool] value.
/// This means obviously that the values consists of `true` and `false` (`null` not included).
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

  // Methods

  /// {@template boolean_parameter_copy_with}
  ///
  /// Copys this with the additional alternate parameters.
  ///
  /// {@endtemplate}
  BooleanParameter copyWith({
    ParameterList<bool>? list,
    int? defaultOption,
    OnParameterValueChangedCallback<bool>? onChangedCallback,
  }) =>
      BooleanParameter(
        list ?? _list,
        defaultOption: defaultOption ?? super.defaultOption,
        onChangedCallback: onChangedCallback ?? super.onChangedCallback,
      );

  // Overrides

  @override
  ParameterType get type => ParameterType.boolean;
}
