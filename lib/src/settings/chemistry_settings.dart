part of 'settings.dart';

/// {@template chemistry_settings}
///
/// A singleton which contains all the settings for [CherryUserMode.chemistry]
///
/// {@endtemplate}

final class ChemistrySettings
    extends CherrySettings<ChemistrySettingsProperty> {
  // Static Properties

  /// {@macro chemistry_settings}
  static ChemistrySettings instance = ChemistrySettings._internal();

  // Constructors

  ChemistrySettings._internal();

  // Factories

  /// {@macro chemistry_settings}
  factory ChemistrySettings() => instance;

  // Overrides

  @override
  CherrySettings<ChemistrySettingsProperty> get defaultSettings =>
      ChemistrySettings._internal();

  @override
  List<Object?> get props => [];
}
