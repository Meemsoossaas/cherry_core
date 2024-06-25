part of '../cherry_core.dart';

final class CherryCoreHintException<T> extends CherryCoreException<T> {
  static CherryCoreExceptionList<CherryCoreHintException> exceptionStackTrace =
      List.empty(growable: true);

  CherryCoreHintException(super.message) {
    exceptionStackTrace.pushFront(this);
  }

  @override
  CherryCoreExceptionType get type => CherryCoreExceptionType.hint;

  @override
  CherryCoreHintException? fetchException([int index = 0]) {
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
