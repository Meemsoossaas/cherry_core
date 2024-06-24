part of '../cherry_core.dart';

sealed class CherrySettingParameter<T> extends CherryCore {
  final ParameterList<T> _list;
  final int defaultOption;

  CherrySettingParameter(
    this._list, {
    this.defaultOption = 0,
  })  : assert(
          (defaultOption >= 0) && (defaultOption <= _list.length - 1),
          "'defaultOption' must be in relation of the size of the 'options' list",
        ),
        assert(
          _list.isNotEmpty,
          "'list' must have at least one value.",
        );

  ParameterType get type;

  ParameterList<T> get list => _list;

  ParameterCore get defaultParameterValue => list[defaultOption];

  @override
  List<Object?> get props => [
        _list,
        defaultOption,
      ];
}
