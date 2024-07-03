part of 'settings.dart';

/// {@template input_parameter}
///
/// A settings parameter which handles input
/// Inputs will always be a [String]
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

  // Overrides

  @override
  ParameterType get type => ParameterType.input;
}
