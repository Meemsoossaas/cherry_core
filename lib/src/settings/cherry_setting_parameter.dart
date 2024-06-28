part of 'settings.dart';

sealed class CherrySettingParameter<T> extends CherryCore {
  final ParameterList<T> _list;
  final int defaultOption;
  final OnParameterValueChangedCallback<T> onChangedCallback;

  CherrySettingParameter(
    this._list, {
    required this.onChangedCallback,
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

  int get numberOfOptions => _list.length;

  List<int> get validIndices => List<int>.generate(
        _list.length,
        (int index) => index,
        growable: false,
      );

  int get currentIndex => defaultOption;

  set currentIndex(int newIndex) {
    if (validIndices.contains(newIndex)) {
    } else {
      throw Exception();
    }
  }

  ParameterCore<T> get defaultParameterValue => _list[defaultOption];

  ParameterCore<T>? changeOption({required int newIndex}) {
    currentIndex = newIndex;
    return validIndices.contains(currentIndex) ? _list[currentIndex] : null;
  }

  @override
  List<Object?> get props => [
        _list,
        defaultOption,
        onChangedCallback,
      ];
}
