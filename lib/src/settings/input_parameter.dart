part of 'settings.dart';

final class InputParameter extends CherrySettingParameter<String> {
  InputParameter(
    super.list, {
    super.defaultOption,
    required super.onChangedCallback,
  });

  @override
  ParameterType get type => ParameterType.input;
}
