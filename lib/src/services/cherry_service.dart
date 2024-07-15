part of 'services.dart';

/// {@template cherry_service}
///
/// A class which handles service capabilities to it's descendants
///
/// {@endtemplate}

abstract base class CherryService extends CherryCore {
  // Properties

  /// {@template cherry_service_service_name}
  ///
  /// Finalizes the name of the service (which is also its display name)
  ///
  /// {@endtemplate}
  final String serviceName;

  /// {@template cherry_service_is_singleton}
  ///
  /// Finalizes, if the respected class will be treated as a singleton
  ///
  /// {@endtemplate}
  final bool isSingleton;

  // Constructors

  /// {@macro cherry_service}
  CherryService({
    required this.serviceName,
    this.isSingleton = true,
  });
}
