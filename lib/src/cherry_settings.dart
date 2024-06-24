part of '../cherry_core.dart';

sealed class CherrySettings<T extends CherrySettingProperty> extends CherryCore {
  CherrySettings();

  CherrySettings get defaultSettings;

  String get settingsId => Uuid().v1();
}
