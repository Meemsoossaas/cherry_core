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
  static final UserPreferences instance = UserPreferences._(
    filterName: 'user_preferences',
  );

  // Constructors

  UserPreferences._({
    required super.filterName,
  });

  // Factories

  factory UserPreferences() => instance;

  /// {@template user_preferences_copy_with}
  ///
  /// Copys this with the additional alternate parameters
  ///
  /// {@endtemplate}
  UserPreferences copyWith({
    String? filterName,
  }) =>
      UserPreferences._(
        filterName: filterName ?? super.filterName,
      );
}
