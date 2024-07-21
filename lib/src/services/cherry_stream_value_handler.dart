part of 'services.dart';

/// {@template cherry_stream_value_handler}
///
/// A mixin which handles value inputs/outputs for [CherryServiceStreamValue].
///
/// {@endtemplate}

base mixin CherryStreamValueHandler<T extends Object> {
  /// {@template cherry_stream_value_handler_add_value}
  ///
  /// Adds [value] to the [CherryServiceStreamValue].
  ///
  /// {@endtemplate}
  void addValue(T value);
}
