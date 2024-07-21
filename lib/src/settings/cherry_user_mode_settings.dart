part of 'settings.dart';

/// {@template cherry_user_mode_settings}
///
/// Bases on [CherryUserMode], this contains the parallel values for the modes.
///
/// {@endtemplate}

enum CherryUserModeSettings {
  // Values

  /// {@template cherry_user_mode_settings_giver}
  ///
  /// The setting value related to [CherryUserMode.giver].
  ///
  /// {@endtemplate}
  giver(
    name: 'Giver',
    type: GiverSettings,
  ),

  /// {@template cherry_user_mode_settings_receiver}
  ///
  /// The setting value related to [CherryUserMode.receiver].
  ///
  /// {@endtemplate}
  receiver(
    name: 'Receiver',
    type: ReceiverSettings,
  ),

  /// {@template cherry_user_mode_settings_chemistry}
  ///
  /// The setting value related to [CherryUserMode.chemistry].
  ///
  /// {@endtemplate}
  chemistry(
    name: 'Chemistry',
    type: ChemistrySettings,
  );

  // Properties

  /// {@template cherry_user_mode_settings_name}
  ///
  /// The name of the setting's overview.
  ///
  /// {@endtemplate}
  final String name;

  /// {@template cherry_user_mode_settings_type}
  ///
  /// The related [Type] to [CherryUserMode].
  ///
  /// {@endtemplate}
  final Type type;

  // Constructor

  /// {@macro cherry_user_mode_settings}
  const CherryUserModeSettings({
    required this.name,
    required this.type,
  });

  // Overrides

  @override
  String toString() => '$name Settings';
}
