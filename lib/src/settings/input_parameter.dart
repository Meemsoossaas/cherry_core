part of 'settings.dart';

/// {@template input_parameter}
///
/// A settings parameter which handles input.
/// Inputs will always be a [String].
///
/// {@endtemplate}

final class InputParameter extends CherrySettingParameter<String> {
  // Constructors

  /// {@macro input_parameter}
  InputParameter(
    super.list, {
    super.defaultOption,
    required super.onChangedCallback,
  });

  // Methods

  /// {@template input_parameter_copy_with}
  ///
  /// Copys this with the additional alternate parameters.
  ///
  /// {@endtemplate}
  InputParameter copyWith({
    ParameterList<String>? list,
    int? defaultOption,
    OnParameterValueChangedCallback<String>? onChangedCallback,
  }) =>
      InputParameter(
        list ?? _list,
        defaultOption: defaultOption ?? super.defaultOption,
        onChangedCallback: onChangedCallback ?? super.onChangedCallback,
      );

  // Overrides

  @override
  ParameterType get type => ParameterType.input;
}
