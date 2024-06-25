part of '../cherry_core.dart';

final class CherryCoreWarningException<T> extends CherryCoreException<T> {
  static CherryCoreExceptionList<CherryCoreWarningException> exceptionStackTrace =
      List.empty(growable: true);

  CherryCoreWarningException(super.message) {
    exceptionStackTrace.pushFront(this);
  }

  @override
  CherryCoreExceptionType get type => CherryCoreExceptionType.warning;

  @override
  CherryCoreWarningException? fetchException([int index = 0]) {
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
