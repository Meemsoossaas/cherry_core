part of '../cherry_core.dart';

enum CherryCoreExceptionType {
  hint(
    codeLevel: 1,
    comparableLevel: Level.debug,
  ),
  warning(
    codeLevel: 2,
    comparableLevel: Level.error,
  ),
  error(
    codeLevel: 3,
    comparableLevel: Level.error,
  );

  final Level comparableLevel;
  final int codeLevel;

  const CherryCoreExceptionType({
    required this.codeLevel,
    required this.comparableLevel,
  });
}
