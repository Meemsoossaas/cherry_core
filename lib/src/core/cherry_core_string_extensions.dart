part of 'core.dart';

/// {@template cherry_core_string_extensions}
///
/// Some extra functionalities for [String] for building this API.
///
/// {@endtemplate}

extension CherryCoreStringExtensions on String {
  // Getters & Setters

  /// {@template cherry_core_string_extensions_is_a_char}
  ///
  /// Gets a [bool] which checks, if `this` has a [length] of `1` which signals that `this` is a char.
  /// (The is no type for a char in 'dart:core' which this getter could be useful.)
  /// (An extension type might be implemented in this API sooner or later.)
  ///
  /// {@endtemplate}
  bool get isAChar => length == 1;

  /// {@template cherry_core_string_extensions_is_monotone}
  ///
  /// Gets a [bool] which checks on the basis of the first character of `this` (`this[0]`), if `this` contains contains only `this[0]`.
  /// If [isAChar] is `true` then it will return `true`.
  ///
  /// {@endtemplate}
  bool get isMonotone => _isMonotone;

  bool get _isMonotone {
    if (isAChar) {
      return true;
    }
    final firstValue = this[0];
    return split(
          CherryStringInfoFetcher.empty,
        ).where((value) => value == firstValue).toList().length ==
        length;
  }

  /// {@template cherry_core_string_extensions_is_not_monotone}
  ///
  /// Gets a [bool] which represents the opposite of [isMonotone].
  /// This indicates that `this` contains more than one unique characters.
  ///
  /// {@endtemplate}
  bool get isNotMonotone => !isMonotone;

  /// {@template cherry_core_string_extensions_parseable_as_num}
  ///
  /// Gets a [bool] which checks, if `this` is parseable as a [num].
  /// If [FormatException] is being thrown by [num.parse] then it will return `false`.
  ///
  /// {@endtemplate}
  bool get parseableAsNum => _parseableAsNum;

  bool get _parseableAsNum {
    try {
      num.parse(this);
      return true;
    } on FormatException catch (_) {
      return false;
    }
  }

  /// {@template cherry_core_string_extensions_parseable_as_int}
  ///
  /// Gets a [bool] which checks, if `this` is parseable as a [int].
  /// If [FormatException] is being thrown by [int.parse] then it will return `false`.
  ///
  /// {@endtemplate}
  bool get parseableAsInt => _parseableAsInt;

  bool get _parseableAsInt {
    try {
      int.parse(this);
      return true;
    } on FormatException catch (_) {
      return false;
    }
  }

  /// {@template cherry_core_string_extensions_parseable_as_double}
  ///
  /// Gets a [bool] which checks, if `this` is parseable as a [double].
  /// If [FormatException] is being thrown by [double.parse] then it will return `false`.
  ///
  /// {@endtemplate}
  bool get parseableAsDouble => _parseableAsDouble;

  bool get _parseableAsDouble {
    try {
      num.parse(this);
      return true;
    } on FormatException catch (_) {
      return false;
    }
  }

  /// {@template cherry_core_string_extensions_as_map}
  ///
  /// Gets a [StringHashMap] from `this`.
  ///
  /// {@endtemplate}
  StringHashMap get asMap => split(
        CherryStringInfoFetcher.empty,
      ).asMap();
}
