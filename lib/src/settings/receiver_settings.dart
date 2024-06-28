part of 'settings.dart';

/// {@template receiver_settings}
///
/// A singleton which contains all the settings for [CherryUserMode.receiver]
///
/// {@endtemplate}

final class ReceiverSettings extends CherrySettings<ReceiverSettingsProperty> {
  // Static Properties

  /// {@macro receiver_settings}
  static ReceiverSettings instance = ReceiverSettings._internal();

  // Constructors

  ReceiverSettings._internal();

  // Factories

  /// {@macro receiver_settings}
  factory ReceiverSettings() => instance;

  // Overrides

  @override
  CherrySettings<ReceiverSettingsProperty> get defaultSettings =>
      ReceiverSettings._internal();

  @override
  List<Object?> get props => [];
}
