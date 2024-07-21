part of 'services.dart';

/// {@template cherry_service_stream_value}
///
/// A class which sets the framework and additional functionalities for the descendants of [CherryService].
/// The related [Stream]'s and [StreamSubscription]'s will yield, contain and return a descendant of this.
///
/// {@endtemplate}

abstract base class CherryServiceStreamValue<T extends Object>
    extends CherryCore with CherryStreamValueHandler<T> {
  // Properties

  /// {@template cherry_service_stream_value_values}
  ///
  /// All values this has ever contained and accepted.
  /// The most recent value being `values[0]`.
  ///
  /// {@endtemplate}
  final List<T> values;

  /// {@template cherry_service_stream_value_initial_value}
  ///
  /// The first value when this is being initialized.
  ///
  /// {@endtemplate}
  final T initialValue;

  // Constructors

  /// {@macro cherry_service_stream_value}
  CherryServiceStreamValue(
    this.initialValue,
  ) : values = <T>[] {
    values.pushFront(initialValue);
  }

  /// {@template cherry_service_stream_value_duplicates}
  ///
  /// Gets a [List] of all duplicated values of [values].
  ///
  /// {@endtemplate}
  List<T> get duplicates => _duplicates;

  List<T> get _duplicates {
    final list = <T>[];
    final length = values.length;
    for (int i = 0; i < length; i++) {
      if (i == 0) continue;
      if (values[i] == values[i - 1]) list.add(values[i]);
    }
    return list;
  }

  /// {@template cherry_service_stream_value_uniques}
  ///
  /// Gets a [Set] of all uniques values of [values].
  ///
  /// {@endtemplate}
  Set<T> get uniques => Set<T>.from(values);

  // Overrides

  @override
  void addValue(T value) => values.add(value);

  @override
  List<Object?> get props => <Object?>[values, initialValue] + super.props;
}
