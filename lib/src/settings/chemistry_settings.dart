part of 'settings.dart';

/// {@template chemistry_settings}
///
/// A singleton which contains all the settings for [CherryUserMode.chemistry].
///
/// {@endtemplate}

final class ChemistrySettings
    extends CherrySettings<ChemistrySettingsProperty> {
  // Static Properties

  /// {@macro chemistry_settings}
  static final ChemistrySettings instance = ChemistrySettings._(
    boxName: CherryCoreCrudHandler.chemistrySettings,
    settingsMap: const {},
  );

  // Constructors

  ChemistrySettings._({
    required super.boxName,
    required super.settingsMap,
  });

  // Factories

  /// {@macro chemistry_settings}
  factory ChemistrySettings() => instance;

  // Overrides

  @override
  CherrySettings<ChemistrySettingsProperty> get defaultSettings =>
      ChemistrySettings._(
        boxName: CherryCoreCrudHandler.defaultChemistrySettings,
        settingsMap: const {},
      );
}
