part of '../cherry_core.dart';

final class OptionParameter<T> extends CherrySettingParameter<T> {
  OptionParameter(
    super._list, {
    super.defaultOption,
  });

  @override
  ParameterType get type => ParameterType.option;
}
