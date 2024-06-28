part of 'core.dart';

final class CherryCoreHintException<T> extends CherryCoreException<T> {
  static CherryCoreExceptionList<CherryCoreHintException> exceptionStackTrace =
      List.empty(growable: true);

  CherryCoreHintException(
    super.message, {
    super.loggerBuilder,
    super.exceptionCallback,
    required super.instanceType,
  }) {
    exceptionStackTrace.pushFront(this);
  }

  @override
  CherryCoreExceptionType get type => CherryCoreExceptionType.hint;

  @override
  Future<CherryCoreHintException?> fetchException([int index = 0]) async {
    final lastException =
        exceptionStackTrace.isEmpty ? exceptionStackTrace[index] : null;
    if (lastException == this && exceptionCallback == null) {
      return lastException;
    } else if (lastException == this && exceptionCallback != null) {
      await exceptionCallback!(exceptionStackTrace);
      CherryCoreException.handleException<CherryCoreHintException>(
        exceptionStackTrace,
        lastException!,
      );
      return lastException;
    }
    return null;
  }
}
