part of '../cherry_core.dart';

typedef ParameterCore<T> = ({
  String abbrevation,
  String name,
  T value,
});

typedef ParameterList<T> = List<ParameterCore<T>>;

typedef OnParameterValueChangedCallback<T> = bool Function(
  T selectedValue,
    int newIndex,
);
