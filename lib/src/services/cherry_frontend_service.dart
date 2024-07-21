part of 'services.dart';

/// {@template cherry_frontend_service}
///
/// A class which handles and offers unique functionalities for [CherryService]'s of [CherryServiceType.frontend].
///
/// {@endtemplate}

abstract base class CherryFrontendService<T extends Object>
    extends CherryService<T, CherryFrontendStreamValue<T>> {
  // Constructors

  /// {@macro cherry_frontend_service}
  CherryFrontendService({
    required super.serviceName,
    super.isSingleton,
    super.replicatable,
  }) : super(serviceType: CherryServiceType.frontend);
}
