part of 'core.dart';

/// {@template cherry_core_exception_type}
///
/// Declares of [CherryCoreException] the different types of exceptions in this API.
///
/// {@endtemplate}

enum CherryCoreExceptionType implements Comparable<CherryCoreExceptionType> {
  // Values

  /// {@template cherry_core_exception_type_hint}
  ///
  /// The exception is a hint (used for debugging).
  ///
  /// {@endtemplate}
  hint(
    codeLevel: 1,
    comparableLevel: Level.debug,
    forDebugging: true,
  ),

  /// {@template cherry_core_exception_type_warning}
  ///
  /// The exception is a warning (used for light errors).
  ///
  /// {@endtemplate}
  warning(
    codeLevel: 2,
    comparableLevel: Level.error,
    forDebugging: false,
  ),

  /// {@template cherry_core_exception_type_error}
  ///
  /// The exception is a error (used for serious errors).
  ///
  /// {@endtemplate}
  error(
    codeLevel: 3,
    comparableLevel: Level.error,
    forDebugging: false,
  );

  // Properties

  /// {@template cherry_core_exception_type_comparable_level}
  ///
  /// The compared level via [Level] contained in logger (https://pub.dev/packages/logger).
  ///
  /// {@endtemplate}
  final Level comparableLevel;

  /// {@template cherry_core_exception_type_code_level}
  ///
  /// The level of the the exception.
  ///
  /// {@endtemplate}
  final int codeLevel;

  /// {@template cherry_core_exception_type_for_debugging}
  ///
  /// The purpose of the exception, if it is intended for debugging.
  ///
  /// {@endtemplate}
  final bool forDebugging;

  // Constructor

  /// {@macro cherry_core_exception_type}
  const CherryCoreExceptionType({
    required this.codeLevel,
    required this.comparableLevel,
    required this.forDebugging,
  });

  // Overrides

  @override
  int compareTo(CherryCoreExceptionType other) =>
      (codeLevel - other.codeLevel) * 100;

  @override
  String toString() =>
      '$comparableLevel: Code ${codeLevel * 100}${forDebugging == true ? '; (Debug)' : ''}';
}
