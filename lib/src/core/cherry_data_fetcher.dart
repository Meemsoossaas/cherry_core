part of 'core.dart';

/// {@template cherry_data_fetcher}
///
/// A class which implements functionalities of external data.
/// Therefore, that external data can be converted, compared, extracted etc.
/// Then an expected value will be returned.
///
/// {@endtemplate}

abstract mixin class CherryDataFetcher<T extends Enum> {
  // Methods

  /// {@template cherry_data_fetcher_from_display_name}
  ///
  /// Returns [T] or `null`, if it has been found in a sequence, collection etc.
  /// Mostly which enums, it will iterate through all values of an enumeration.
  /// Here is an example of an implementation for [Gender]:
  /// ```dart
  /// @override
  /// Gender? fromDisplayName(String displayName) {
  ///   for (final gender in Gender.values) {
  ///     if (gender.displayName == displayName) return gender;
  ///   }
  ///   return null;
  /// }
  /// ```
  ///
  ///
  /// {@endtemplate}
  T? fromDisplayName(String displayName) => null;
}
