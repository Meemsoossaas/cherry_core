part of 'services.dart';

/// {@template cherry_backend_service}
///
/// A class which handles and offers unique functionalities for [CherryService]'s of [CherryServiceType.backend].
///
/// {@endtemplate}

abstract base class CherryBackendService<T extends Object>
    extends CherryService<T, CherryBackendStreamValue<T>> {
  // Constructors

  /// {@macro cherry_backend_service}
  CherryBackendService({
    required super.serviceName,
    super.isSingleton,
    super.replicatable,
  }) : super(serviceType: CherryServiceType.backend);
}
