part of 'core.dart';

/// {@template cherry_core_error_exception}
///
/// An exception which is for serious error handling
///
/// {@endtemplate}

final class CherryCoreErrorException<T> extends CherryCoreException<T>
    implements Error {
  // Static Properties

  /// {@template cherry_core_error_exception_exception_stack_trace}
  ///
  /// The stack trace containing [CherryCoreException] if initialized
  ///
  /// {@endtemplate}
  static final CherryCoreExceptionList<CherryCoreErrorException>
      _exceptionStackTrace = List.empty(growable: true);

  // Constructors

  /// {@macro cherry_core_error_exception}
  CherryCoreErrorException(
    super.message, {
    super.loggerBuilder,
    super.exceptionCallback,
    required super.instanceType,
  }) {
    _exceptionStackTrace.pushFront(this);
  }

  // Overrides

  @override
  CherryCoreExceptionType get type => CherryCoreExceptionType.error;

  @override
  StackTrace? get stackTrace => StackTrace.current;

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
      CherryCoreException.handleException<CherryCoreErrorException>(
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
