part of 'services.dart';

/// {@template cherry_undefined_service}
///
/// A class which handles and offers unique functionalities for [CherryService]'s of [CherryServiceType.undefined].
///
/// {@endtemplate}

abstract base class CherryUndefinedService<T extends Object>
    extends CherryService<T, CherryUndefinedStreamValue<T>> {
  // Constructors

  /// {@macro cherry_undefined_service}
  CherryUndefinedService({
    required super.serviceName,
    super.isSingleton,
    super.replicatable,
  }) : super(serviceType: CherryServiceType.undefined);
}
