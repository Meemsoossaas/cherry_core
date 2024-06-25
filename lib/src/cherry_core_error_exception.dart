part of '../cherry_core.dart';

final class CherryCoreErrorException<T> extends CherryCoreException<T>
    implements Error {
  static CherryCoreExceptionList<CherryCoreErrorException> exceptionStackTrace =
      List.empty(growable: true);

  CherryCoreErrorException(super.message) {
    exceptionStackTrace.pushFront(this);
  }

  @override
  CherryCoreExceptionType get type => CherryCoreExceptionType.error;

  @override
  StackTrace? get stackTrace => StackTrace.current;

  @override
  CherryCoreErrorException? fetchException([int index = 0]) {
    final lastException =
        exceptionStackTrace.isEmpty ? exceptionStackTrace[index] : null;
    if (lastException == this && exceptionCallback == null) {
      return lastException;
    } else if (lastException == this && exceptionCallback != null) {
      exceptionCallback!(exceptionTrace: exceptionStackTrace);
      return lastException;
    }
    return null;
  }
}
