part of 'core.dart';

/// {@template cherry_core_hint_exception}
///
/// An exception which is for hints especially for debug purposes
///
/// {@endtemplate}

final class CherryCoreHintException<T> extends CherryCoreException<T> {
  /// {@template cherry_core_hint_exception_exception_stack_trace}
  ///
  /// The stack trace containing [CherryCoreException] if initialized
  ///
  /// {@endtemplate}
  static final CherryCoreExceptionList<CherryCoreHintException>
      _exceptionStackTrace = List.empty(growable: true);

  /// {@macro cherry_core_hint_exception}
  CherryCoreHintException(
    super.message, {
    super.loggerBuilder,
    super.exceptionCallback,
    required super.instanceType,
  }) {
    _exceptionStackTrace.pushFront(this);
  }

  @override
  CherryCoreExceptionType get type => CherryCoreExceptionType.hint;

  @override
  CherryCoreFetchResult<T> fetchException([int index = 0]) {
    final lastException =
        _exceptionStackTrace.isEmpty ? _exceptionStackTrace[index] : null;
    if (lastException == this && exceptionCallback == null) {
      return (
        exception: lastException,
        value: null as T,
      );
    } else if (lastException == this && exceptionCallback != null) {
      final callbackValue = exceptionCallback!(_exceptionStackTrace);
      CherryCoreException.handleException<CherryCoreHintException>(
        trace: _exceptionStackTrace,
        selectedException: lastException!,
      );
      return (
        exception: lastException,
        value: callbackValue,
      );
    }
    return (
      exception: null,
      value: null as T,
    );
  }
}
