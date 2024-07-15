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

  // Methods

  /// {@template option_parameter_copy_with}
  ///
  /// Copys this with the additional alternate parameters
  ///
  /// {@endtemplate}
  OptionParameter copyWith({
    ParameterList<String>? list,
    int? defaultOption,
    OnParameterValueChangedCallback<String>? onChangedCallback,
  }) =>
      OptionParameter(
        list ?? _list,
        defaultOption: defaultOption ?? super.defaultOption,
        onChangedCallback: onChangedCallback ?? super.onChangedCallback,
      );

  // Overrides

  @override
  ParameterType get type => ParameterType.option;
}
