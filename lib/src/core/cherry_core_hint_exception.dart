part of 'core.dart';

/// {@template cherry_core_hint_exception}
///
/// An exception which is for hints especially for debug purposes
///
/// {@endtemplate}

final class CherryCoreHintException<T> extends CherryCoreException<T> {
  // Static Properties

  /// {@template cherry_core_hint_exception_exception_stack_trace}
  ///
  /// The stack trace containing [CherryCoreException] if initialized
  ///
  /// {@endtemplate}
  static final CherryCoreExceptionList<CherryCoreHintException>
      _exceptionStackTrace = List.empty(growable: true);

  // Constructors

  /// {@macro cherry_core_hint_exception}
  CherryCoreHintException(
    super.message, {
    super.loggerBuilder,
    super.exceptionCallback,
    required super.instanceType,
  }) {
    _exceptionStackTrace.pushFront(this);
  }

  // Methods

  /// {@template cherry_core_hint_exception_copy_with}
  ///
  /// Copys this with the additional alternate parameters
  ///
  /// {@endtemplate}
  CherryCoreHintException<T> copyWith({
    String? message,
    CherryCoreLoggerBuilder? loggerBuilder,
    CherryCoreExceptionCallback<T>? exceptionCallback,
    Type? instanceType,
  }) =>
      CherryCoreHintException<T>(
        message ?? super.message,
        loggerBuilder: loggerBuilder ?? super.loggerBuilder,
        exceptionCallback: exceptionCallback ?? super.exceptionCallback,
        instanceType: instanceType ?? super.instanceType,
      );

  // Overrides

  @override
  CherryCoreExceptionType get type => CherryCoreExceptionType.hint;

  @override
  CherryCoreFetchResult<T> fetchException([int index = 0]) => _fetchException(
        index,
      );

  CherryCoreFetchResult<T> _fetchException([int index = 0]) {
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
