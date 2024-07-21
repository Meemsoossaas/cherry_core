part of 'services.dart';

/// {@template cherry_error_handling_service}
///
/// A class which handles and offers unique functionalities for [CherryService]'s of [CherryServiceType.errorHandling].
///
/// {@endtemplate}

abstract base class CherryErrorHandlingService<T extends Object>
    extends CherryService<T, CherryErrorHandlingStreamValue<T>> {
  // Constructors

  /// {@macro cherry_error_handling_service}
  CherryErrorHandlingService({
    required super.serviceName,
    super.isSingleton,
    super.replicatable,
  }) : super(serviceType: CherryServiceType.errorHandling);
}
