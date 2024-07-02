part of 'core.dart';

/// {@template cherry_user_mode}
///
/// Declares all the possible modes the user will interact with (multiple times)
///
/// {@endtemplate}

enum CherryUserMode {
  // Values

  /// {@template cherry_user_mode_giver}
  ///
  /// The user is in 'Giver Mode'
  ///
  /// {@endtemplate}
  giver(
    modeName: 'Giver',
    route: 'giver/',
  ),

  /// {@template cherry_user_mode_receiver}
  ///
  /// The user is in 'Receiver Mode'
  ///
  /// {@endtemplate}
  receiver(
    modeName: 'Receiver',
    route: 'receiver/',
  ),

  /// {@template cherry_user_mode_chemistry}
  ///
  /// The user is in 'Chemistry Mode'
  ///
  /// {@endtemplate}
  chemistry(
    modeName: 'Chemistry',
    route: 'chemistry/',
  ),

  /// {@template cherry_user_mode_sign_up}
  ///
  /// The user is signing in via creating a new account or logging into an existing account
  ///
  /// {@endtemplate}
  signUp(
    modeName: null,
    route: 'signup/',
  );

  // Properties

  /// {@template cherry_user_mode_route}
  ///
  /// The single and unique route of this
  ///
  /// {@endtemplate}
  final String route;

  /// {@template cherry_user_mode_mode_name}
  ///
  /// The name of the mode (necessary for display via [toString])
  ///
  /// {@endtemplate}
  final String? modeName;

  // Constructor

  /// {@macro cherry_user_mode}
  const CherryUserMode({
    required this.modeName,
    required this.route,
  });

  // Getters

  /// {@template cherry_user_mode_full_route}
  ///
  /// Gets the full route of this
  ///
  /// {@endtemplate}
  String get fullRoute => '${CherryRoute.initialRoute}r$route';

  // Overrides

  @override
  String toString() =>
      this == CherryUserMode.signUp ? 'Sign Up' : '$modeName Mode';
}
