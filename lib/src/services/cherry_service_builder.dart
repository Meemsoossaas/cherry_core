part of 'services.dart';

/// {@template cherry_service_builder}
///
/// A class which constructs the framework and contains the functionalities for all descendants of [CherryService].
///
/// {@endtemplate}

abstract class CherryServiceBuilder<T extends Object,
    U extends CherryServiceStreamValue<T>> extends CherryCore {
  // Properties

  /// {@template cherry_service_builder_stream_create_cherry_service_stream}
  ///
  /// The [Stream] of this which will yield [U].
  ///
  /// {@endtemplate}
  final CreateCherryServiceStream<U> stream;

  /// {@template cherry_service_builder_on_cherry_service_subscription_listen}
  ///
  /// The listener function for [serviceSubscription] of this.
  ///
  /// {@endtemplate}
  final OnCherryServiceSubscriptionListen onListen;

  /// {@template cherry_service_builder_on_error_cherry_service_subscription_listen}
  ///
  /// The function which will be invoked if [onListen] catches an [Exception] (most of the time a descendant of [CherryCoreException]).
  ///
  /// {@endtemplate}
  final OnErrorCherryServiceSubscriptionListen? onError;

  // Constructors

  /// {@macro cherry_service_builder}
  CherryServiceBuilder(
    this.stream,
    this.onListen, {
    this.onError,
  }) {
    activate(isActivated);
  }

  // Getters & Setters

  /// {@template cherry_service_builder_is_activated}
  ///
  /// Gets a [bool] if this is activated.
  /// On default, it gets `true`.
  /// If it gets `true` then this is fully functional.
  /// If it gets `false` then this is fully disabled.
  /// To change this, just set it to the opposite [bool] value.
  ///
  /// ```dart
  /// print(service.isActivated) // Outputs: true
  /// service.isActivated = false; // 'service' is now deactivated.
  /// ```
  ///
  /// {@endtemplate}
  bool get isActivated => true;

  set isActivated(bool isActivated) =>
      isActivated != this.isActivated ? isActivated : this.isActivated;

  /// {@template cherry_service_builder_service_subscription}
  ///
  /// The unique [StreamSubscription] of this.
  ///
  /// {@endtemplate}
  StreamSubscription<U>? get serviceSubscription => null;

  set serviceSubscription(StreamSubscription<U>? serviceSubscription) =>
      serviceSubscription != this.serviceSubscription
          ? serviceSubscription
          : this.serviceSubscription;

  // Methods

  /// {@template cherry_service_builder_activate}
  ///
  /// Activates this depending on [isActivated] or on [this.isActivated].
  ///
  /// {@endtemplate}
  Future<void> activate([
    bool? isActivated,
  ]) async =>
      await _activate(isActivated);

  Future<void> _activate([
    bool? isActivated,
  ]) async {
    switch (isActivated ?? this.isActivated) {
      case false:
        serviceSubscription = stream().listen(
          (event) => onListen(event),
          onError: (
            exception,
            stackTrace,
          ) =>
              onError != null
                  ? onError!(
                      exception,
                      stackTrace,
                    )
                  : null,
          cancelOnError: true,
        );
        isActivated = true;
      case true:
        throw CherryCoreWarningException(
          '\'isActivated\' must be \'false\'',
          instanceType: CherryServiceBuilder,
        );
    }
  }

  /// {@template cherry_service_builder}
  ///
  /// Pauses this.
  ///
  /// {@endtemplate}
  Future<void> pause() async => await _pause();

  Future<void> _pause() async {
    final serviceSubscription = this.serviceSubscription;
    if (serviceSubscription != null) {
      serviceSubscription.pause();
    }
  }

  /// {@template cherry_service_builder_resume}
  ///
  /// Resumes this.
  ///
  /// {@endtemplate}
  Future<void> resume() async => await _resume();

  Future<void> _resume() async {
    final serviceSubscription = this.serviceSubscription;
    if (serviceSubscription != null) {
      serviceSubscription.resume();
    }
  }

  /// {@template cherry_service_builder_deactivate}
  ///
  /// Deactivates this depending on [isActivated] or on [this.isActivated].
  ///
  /// {@endtemplate}
  Future<void> deactivate([
    bool? isActivated,
  ]) async =>
      await _deactivate(isActivated);

  Future<void> _deactivate([
    bool? isActivated,
  ]) async {
    switch (isActivated ?? this.isActivated) {
      case true:
        serviceSubscription = null;
        this.isActivated = false;
      case false:
        throw CherryCoreWarningException(
          '\'isActivated\' must be \'true\'',
          instanceType: CherryServiceBuilder,
        );
    }
  }
}
