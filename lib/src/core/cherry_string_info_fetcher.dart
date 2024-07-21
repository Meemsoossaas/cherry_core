part of 'core.dart';

/// {@template cherry_string_info_fetcher}
///
/// A class containing and handling data as needed for [CherryCoreStringExtensions].
/// (This is `abstract` and `final` because this is intend to only static values and methods.)
///
/// {@endtemplate}

abstract final class CherryStringInfoFetcher extends CherryCore {
  /// {@template cherry_string_info_fetcher_empty}
  ///
  /// An empty string.
  ///
  /// {@endtemplate}
  static const String empty = '';

  /// {@template cherry_string_info_fetcher_whitespace}
  ///
  /// A string as whitespace.
  ///
  /// {@endtemplate}
  static const String whitespace = ' ';
}
