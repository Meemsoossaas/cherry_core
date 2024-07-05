part of 'settings.dart';

/// {@template receiver_settings}
///
/// A singleton which contains all the settings for [CherryUserMode.receiver]
///
/// {@endtemplate}

final class ReceiverSettings extends CherrySettings<ReceiverSettingsProperty> {
  // Static Properties

  /// {@macro receiver_settings}
  static final ReceiverSettings instance = ReceiverSettings._internal(
    boxName: CherryCoreCrudHandler.receiverSettings,
    settingsMap: const {},
  );

  // Constructors

  ReceiverSettings._internal({
    required super.boxName,
    required super.settingsMap,
  });

  // Factories

  /// {@macro receiver_settings}
  factory ReceiverSettings() => instance;

  // Overrides

  @override
  CherrySettings<ReceiverSettingsProperty> get defaultSettings =>
      ReceiverSettings._internal(
        boxName: CherryCoreCrudHandler.defaultReceiverSettings,
        settingsMap: const {},
      );
}
