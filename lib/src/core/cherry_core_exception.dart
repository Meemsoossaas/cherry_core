part of 'core.dart';

abstract base class CherryCoreException<T> extends CherryCore
    implements Exception {
  static Future<void> handleException<T extends CherryCoreException>(
    CherryCoreExceptionList<T> trace,
    T selectedException,
  ) async {
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

  final CherryCoreLoggerBuilder? loggerBuilder;

  final CherryCoreExceptionCallback<T>? exceptionCallback;

  final Type instanceType;

  final String message;

  CherryCoreException(
    this.message, {
    required this.instanceType,
    this.loggerBuilder,
    this.exceptionCallback,
  });

  CherryCoreExceptionType get type;

  @override
  List<Object?> get props => [
        message,
        loggerBuilder,
      ];

  Future<CherryCoreException?> fetchException([int index = 0]);
}
