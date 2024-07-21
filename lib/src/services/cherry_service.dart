part of 'services.dart';

/// {@template cherry_service}
///
/// A class which handles service capabilities to it's descendants.
///
/// {@endtemplate}

abstract base class CherryService<T extends Object,
        U extends CherryServiceStreamValue<T>> extends CherryCore
    implements CherryServiceBuilder<T, U> {
  // Properties
  /// {@template cherry_service_service_name}
  ///
  /// Finalizes the name of the service (which is also its display name).
  ///
  /// {@endtemplate}
  @required
  final String serviceName;

  /// {@template cherry_service_service_type}
  ///
  /// Finalizes the type of the service.
  ///
  /// {@endtemplate}
  @required
  final CherryServiceType serviceType;

  /// {@template cherry_service_is_singleton}
  ///
  /// Finalizes, if the respected class will be treated as a singleton.
  ///
  /// {@endtemplate}
  @visibleForTesting
  final bool isSingleton;

  /// {@template cherry_service_replicatable}
  ///
  /// Finalizes, if the respected class can be replicated via [copyWith].
  ///
  /// {@endtemplate}
  @visibleForTesting
  final bool replicatable;

  // Constructors

  /// {@macro cherry_service}
  CherryService({
    required this.serviceName,
    required this.serviceType,
    this.replicatable = false,
    this.isSingleton = true,
  });

  // Getters & Setters

  /// {@template cherry_service_display_text}
  ///
  /// Gets the text for display (for logging).
  ///
  /// {@endtemplate}
  @visibleForTesting
  String get displayText =>
      '${serviceName.toUpperCase()}: ${serviceType.description}';

  // Methods

  /// {@template cherry_service_copy_with}
  ///
  /// Copys this with the additional alternate parameters.
  ///
  /// {@endtemplate}
  T copyWith({
    String? serviceName,
    CherryServiceType? serviceType,
    bool? isSingleton,
    bool? replicatable,
  });
}
