part of 'core.dart';

/// {@template cherry_user_mode}
///
/// Declares all the possible modes the user will interact with (multiple times)
///
/// {@endtemplate}

enum CherryUserMode {
  /// {@template cherry_user_mode}
  ///
  /// The user is in 'Giver Mode'
  ///
  /// {@endtemplate}
  giver(
    modeName: 'Giver',
    route: 'giver/',
  ),

  /// {@template cherry_user_mode}
  ///
  /// The user is in 'Receiver Mode'
  ///
  /// {@endtemplate}
  receiver(
    modeName: 'Receiver',
    route: 'receiver/',
  ),

  /// {@template cherry_user_mode}
  ///
  /// The user is in 'Chemistry Mode'
  ///
  /// {@endtemplate}
  chemistry(
    modeName: 'Chemistry',
    route: 'chemistry/',
  ),

  /// {@template cherry_user_mode}
  ///
  /// The user is signing in via creating a new account or logging into an existing account
  ///
  /// {@endtemplate}
  signUp(
    modeName: null,
    route: 'signup/',
  );


  /// {@template cherry_user_mode}
  ///
  /// The single and unique route of this
  ///
  /// {@endtemplate}
  final String route;

  /// {@template cherry_user_mode}
  ///
  /// The name of the mode (necessary for display via [toString])
  ///
  /// {@endtemplate}
  final String? modeName;

  /// {@macro cherry_user_mode}
  const CherryUserMode({
    required this.modeName,
    required this.route,
  });

  /// {@template cherry_user_mode}
  ///
  /// Gets the full route of this
  ///
  /// {@endtemplate}
  String get fullRoute => '${CherryRoute.initialRoute}r$route';

  @override
  String toString() =>
      this == CherryUserMode.signUp ? 'Sign Up' : '$modeName Mode';
}
