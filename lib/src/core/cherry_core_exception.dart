part of 'core.dart';

/// {@template cherry_core_exception}
///
/// A class which handles and contains the framework of all exceptions in this package
///
/// {@endtemplate}

abstract base class CherryCoreException<T> extends CherryCore
    implements Exception {
  // Static Methods

  /// {@template cherry_core_handle_exception}
  ///
  /// Handles via [T] a descendant of this depending on [CherryCoreExceptionType]
  ///
  /// {@endtemplate}
  static Future<void> handleException<T extends CherryCoreException>({
    required CherryCoreExceptionList<T> trace,
    required T selectedException,
  }) async =>
      await _handleException<T>(
        trace: trace,
        selectedException: selectedException,
      );

  static Future<void> _handleException<T extends CherryCoreException>({
    required CherryCoreExceptionList<T> trace,
    required T selectedException,
  }) async {
    if ((trace.contains(selectedException)) &&
        (selectedException.loggerBuilder != null)) {
      final Logger logger = selectedException.loggerBuilder!.logger;
      switch (selectedException.type) {
        case CherryCoreExceptionType.hint:
          logger.d(
            selectedException.message,
            time: DateTime.now(),
            error: selectedException.instanceType,
          );
          break;
        case CherryCoreExceptionType.warning:
          logger.w(
            selectedException.message,
            time: DateTime.now(),
            error: selectedException.instanceType,
          );
          break;
        case CherryCoreExceptionType.error:
          logger.e(
            selectedException.message,
            time: DateTime.now(),
            error: selectedException.instanceType,
          );
          break;
      }
    } else {
      throw CherryCoreErrorException(
        "",
        instanceType: CherryCoreException,
      );
    }
  }

  // Properties

  /// {@template cherry_core_logger_builder}
  ///
  /// Contains the builder for the [Logger] with extended capabilities
  ///
  /// {@endtemplate}
  final CherryCoreLoggerBuilder? loggerBuilder;

  /// {@template cherry_core_exception_callback}
  ///
  /// Additional code that will be executed via [fetchException]
  ///
  /// {@endtemplate}
  final CherryCoreExceptionCallback<T>? exceptionCallback;

  /// {@template cherry_core_instance_type}
  ///
  /// The [Type] of the body where the exception is located
  ///
  /// {@endtemplate}
  final Type instanceType;

  /// {@template cherry_core_message}
  ///
  /// The message which will be displayed which can be handled in dialogs etc.
  ///
  /// {@endtemplate}
  final String message;

  // Constructors

  /// {@macro cherry_core_exception}
  CherryCoreException(
    this.message, {
    required this.instanceType,
    this.loggerBuilder,
    this.exceptionCallback,
  });

  // Getters & Setters

  /// {@template cherry_core_type}
  ///
  /// The type of the exception (essential for [Logger])
  ///
  /// {@endtemplate}
  CherryCoreExceptionType get type;

  // Methods

  /// {@template cherry_core_fetch_exception}
  ///
  /// Tries to fetch via [index] an [CherryCoreException] of a stack trace and handles [exceptionCallback]
  ///
  /// {@endtemplate}
  CherryCoreFetchResult<T> fetchException([int index = 0]);

  // Overrides

  @override
  List<Object?> get props => [
        message,
        loggerBuilder,
        exceptionCallback,
        instanceType,
      ];
}
