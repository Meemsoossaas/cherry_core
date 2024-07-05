part of 'core.dart';

/// {@template cherry_core_logger_builder}
///
/// An extension type for the framework for initializing [Logger] and additional capabilities
///
/// {@endtemplate}

extension type const CherryCoreLoggerBuilder(Logger _logger) implements Logger {
  // Getters & Setters

  /// {@template cherry_core_logger_builder_logger}
  ///
  /// Gets the logger which originated as a parameter
  ///
  /// {@endtemplate}

  Logger get logger => _logger;

  /// {@template cherry_core_logger_builder_props}
  ///
  /// Contains all unique properties
  ///
  /// {@endtemplate}

  List<Object?> get props => [
    _logger,
      ];
}
