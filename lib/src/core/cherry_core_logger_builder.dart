part of 'core.dart';

/// {@template cherry_core_logger_builder}
///
/// A class for the framework for initializing [Logger] and additional capabilities
///
/// {@endtemplate}

base class CherryCoreLoggerBuilder extends CherryCore {
  /// {@template cherry_core_logger_builder_logger}
  ///
  /// The unique logger to be initialized
  ///
  /// {@endtemplate}
  final Logger logger;

  /// {@macro cherry_core_logger_builder}
  CherryCoreLoggerBuilder(
    this.logger,
  );

  @override
  List<Object?> get props => [
        logger,
      ];
}
