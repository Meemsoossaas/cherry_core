part of '../cherry_core.dart';

typedef ParameterCore<T> = ({
  String abbrevation,
  String name,
  T value,
});

typedef ParameterList<T> = List<ParameterCore<T>>;
