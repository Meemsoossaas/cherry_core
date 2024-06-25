part of '../cherry_core.dart';

final class EnumerationParameter<T extends Enum>
    extends CherrySettingParameter<T> {
  final bool asIndex;

  EnumerationParameter(
    super._list, {
    super.defaultOption,
    this.asIndex = false,
    required super.onChangedCallback,
  });

  @override
  List<Object?> get props => <Object?>[asIndex] + super.props;

  @override
  ParameterType get type => ParameterType.enumeration;
}
