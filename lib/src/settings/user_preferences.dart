part of 'settings.dart';

final class UserPreferences extends CherryFilter {
  static UserPreferences instance = UserPreferences._internal();

  UserPreferences._internal();

  factory UserPreferences() => instance;

  @override
  List<Object?> get props => [];
}
