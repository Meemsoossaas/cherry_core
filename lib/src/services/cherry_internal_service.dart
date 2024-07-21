part of 'services.dart';

/// {@template cherry_internal_service}
///
/// A class which handles and offers unique functionalities for [CherryService]'s of [CherryServiceType.internal].
///
/// {@endtemplate}

abstract base class CherryInternalService<T extends Object>
    extends CherryService<T, CherryInternalStreamValue<T>> {
  // Constructors

  /// {@macro cherry_internal_service}
  CherryInternalService({
    required super.serviceName,
    super.isSingleton,
    super.replicatable,
  }) : super(serviceType: CherryServiceType.internal);
}
