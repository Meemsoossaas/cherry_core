part of 'settings.dart';

final class BooleanParameter extends CherrySettingParameter<bool> {
  BooleanParameter(
    super._list, {
    super.defaultOption,
    required super.onChangedCallback,
  }) : assert(
          defaultOption == 0 || defaultOption == 1,
          "'defaultOption' must represent the integer value of a boolean",
        );

  @override
  ParameterType get type => ParameterType.boolean;
}
