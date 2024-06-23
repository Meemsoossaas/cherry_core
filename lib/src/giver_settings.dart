part of '../cherry_core.dart';

final class GiverSettings extends CherrySettings {
  static GiverSettings instance = GiverSettings._internal();

  GiverSettings._internal();

  factory GiverSettings() => instance;

  @override
  CherrySettings get defaultSettings => GiverSettings._internal();

  @override
  List<Object?> get props => [];
}
