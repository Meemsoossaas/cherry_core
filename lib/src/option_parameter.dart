part of '../cherry_core.dart';

final class OptionParameter extends CherrySettingParameter<String> {
  OptionParameter(
    super._list, {
    super.defaultOption,
    required super.onChangedCallback,
  });

  @override
  ParameterType get type => ParameterType.option;
}
