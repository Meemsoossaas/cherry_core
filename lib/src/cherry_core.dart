part of '../cherry_core.dart';

abstract base class CherryCore extends Equatable {
  const CherryCore();

  String get id => Uuid().v4();
}
