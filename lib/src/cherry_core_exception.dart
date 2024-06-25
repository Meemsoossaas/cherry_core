part of '../cherry_core.dart';

abstract base class CherryCoreException<T> extends CherryCore
    implements Exception {
  final CherryCoreLoggerBuilder? loggerBuilder;
  final CherryCoreExceptionCallback<T>? exceptionCallback;
  final String message;

  CherryCoreException(
    this.message, {
    this.loggerBuilder,
    this.exceptionCallback,
  });

  CherryCoreExceptionType get type;

  @override
  List<Object?> get props => [
        message,
        loggerBuilder,
      ];

  CherryCoreException? fetchException([int index = 0]);
}
