part of 'settings.dart';

/// {@template enumeration_parameter}
///
/// A settings parameter for handling [Enum] values
///
/// {@endtemplate}

final class EnumerationParameter extends CherrySettingParameter<Enum> {
  // Constructors

  /// {@macro enumeration_parameter}
  EnumerationParameter(
    super._list, {
    super.defaultOption,
    required super.onChangedCallback,
  });

  // Overrides

  @override
  ParameterType get type => ParameterType.enumeration;
}
