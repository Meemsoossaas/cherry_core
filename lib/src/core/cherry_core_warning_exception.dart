part of 'core.dart';

final class CherryCoreWarningException<T> extends CherryCoreException<T> {
  static CherryCoreExceptionList<CherryCoreWarningException>
      exceptionStackTrace = List.empty(growable: true);

  CherryCoreWarningException(
    super.message, {
    super.loggerBuilder,
    super.exceptionCallback,
    required super.instanceType,
  }) {
    exceptionStackTrace.pushFront(this);
  }

  @override
  CherryCoreExceptionType get type => CherryCoreExceptionType.warning;

  @override
  Future<CherryCoreWarningException?> fetchException([int index = 0]) async {
    final lastException =
        exceptionStackTrace.isEmpty ? exceptionStackTrace[index] : null;
    if (lastException == this && exceptionCallback == null) {
      return lastException;
    } else if (lastException == this && exceptionCallback != null) {
      await exceptionCallback!(exceptionStackTrace);
      CherryCoreException.handleException<CherryCoreWarningException>(
        exceptionStackTrace,
        lastException!,
      );
      return lastException;
    }
    return null;
  }
}
