part of 'services.dart';

/// {@template cherry_miscellaneous_service}
///
/// A class which handles and offers unique functionalities for [CherryService]'s of [CherryServiceType.other].
///
/// {@endtemplate}

abstract base class CherryMiscellaneousService<T extends Object>
    extends CherryService<T, CherryMiscellaneousStreamValue<T>> {
  // Constructors

  /// {@macro cherry_miscellaneous_service}
  CherryMiscellaneousService({
    required super.serviceName,
    super.isSingleton,
    super.replicatable,
  }) : super(serviceType: CherryServiceType.other);
}
