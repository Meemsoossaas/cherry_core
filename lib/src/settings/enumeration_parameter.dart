part of 'settings.dart';

final class EnumerationParameter extends CherrySettingParameter<Enum> {
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
