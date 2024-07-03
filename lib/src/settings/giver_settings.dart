part of 'settings.dart';

/// {@template giver_settings}
///
/// A singleton which contains all the settings for [CherryUserMode.giver]
///
/// {@endtemplate}

final class GiverSettings extends CherrySettings<GiverSettingsProperty> {
  // Static Properties

  /// {@macro giver_settings}
  static final GiverSettings instance = GiverSettings._internal();

  // Constructors

  GiverSettings._internal();

  // Factories

  /// {@macro giver_settings}
  factory GiverSettings() => instance;

  // Overrides

  @override
  CherrySettings<GiverSettingsProperty> get defaultSettings =>
      GiverSettings._internal();

  @override
  List<Object?> get props => [];
}
