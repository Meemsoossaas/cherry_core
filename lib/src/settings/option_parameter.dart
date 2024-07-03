part of 'settings.dart';

/// {@template option_parameter}
///
/// A settings parameter which handles options.
/// These values are [String]'s.
///
/// {@endtemplate}

final class OptionParameter extends CherrySettingParameter<String> {
  // Constructor

  /// {@macro option_parameter}
  OptionParameter(
    super._list, {
    super.defaultOption,
    required super.onChangedCallback,
  });

  // Overrides

  @override
  ParameterType get type => ParameterType.option;
}
