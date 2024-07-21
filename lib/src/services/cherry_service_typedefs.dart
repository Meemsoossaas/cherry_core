part of 'services.dart';

/// {@template create_cherry_service_stream}
///
/// A function which creates a stream.
/// (Related to [CherryService])
///
/// {@endtemplate}
typedef CreateCherryServiceStream<T extends CherryServiceStreamValue>
    = Stream<T> Function();

/// {@template on_cherry_service_subscription_listen}
///
/// A function which listens to [Stream] as a [StreamSubscription].
///
/// {@endtemplate}
typedef OnCherryServiceSubscriptionListen<T> = void Function(T event);

/// {@template on_error_cherry_service_subscription_listen}
///
/// A function which will be invoked if of [OnCherryServiceSubscriptionListen] catches an [Exception] (mostly a descendant of [CherryCoreException]).
///
/// {@endtemplate}
typedef OnErrorCherryServiceSubscriptionListen = void Function(
  dynamic exception,
  dynamic stackTrace,
);
