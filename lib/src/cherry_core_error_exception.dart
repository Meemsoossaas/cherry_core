part of '../cherry_core.dart';

final class CherryCoreErrorException<T> extends CherryCoreException<T>
    implements Error {
  static CherryCoreExceptionList<CherryCoreErrorException> exceptionStackTrace =
      List.empty(growable: true);

  CherryCoreErrorException(
    super.message, {
    super.loggerBuilder,
    super.exceptionCallback,
    required super.instanceType,
  }) {
    exceptionStackTrace.pushFront(this);
  }

  @override
  CherryCoreExceptionType get type => CherryCoreExceptionType.error;

  @override
  StackTrace? get stackTrace => StackTrace.current;

  @override
  Future<CherryCoreErrorException?> fetchException([int index = 0]) async {
    final lastException =
        exceptionStackTrace.isEmpty ? exceptionStackTrace[index] : null;
    if (lastException == this && exceptionCallback == null) {
      return lastException;
    } else if (lastException == this && exceptionCallback != null) {
      await exceptionCallback!(exceptionStackTrace);
      CherryCoreException.handleException<CherryCoreErrorException>(
        exceptionStackTrace,
        lastException!,
      );
      return lastException;
    }
    return null;
  }
}
