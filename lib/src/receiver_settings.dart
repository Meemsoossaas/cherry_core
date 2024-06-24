part of '../cherry_core.dart';

final class ReceiverSettings extends CherrySettings<ReceiverSettingsProperty> {
  static ReceiverSettings instance = ReceiverSettings._internal();

  ReceiverSettings._internal();

  factory ReceiverSettings() => instance;

  @override
  CherrySettings get defaultSettings => ReceiverSettings._internal();

  @override
  List<Object?> get props => [];
}
