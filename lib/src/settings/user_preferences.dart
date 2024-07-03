part of 'settings.dart';

/// {@template user_preferences}
///
/// A singleton which contains all filter parameters which can be changed by the user to his/her liking
///
/// {@endtemplate}

final class UserPreferences extends CherryFilter {
  // Static Properties

  /// {@macro user_preferences}
  @internal
  static final UserPreferences instance = UserPreferences._internal();

  // Constructors

  UserPreferences._internal();

  // Factories

  factory UserPreferences() => instance;

  // Overrides

  @override
  List<Object?> get props => [];
}
