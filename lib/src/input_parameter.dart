part of '../cherry_core.dart';

final class InputParameter<T> extends CherrySettingParameter<T> {
  InputParameter(
    super.list, {
    super.defaultOption,
  });

  @override
  ParameterType get type => ParameterType.input;
}
