part of 'core.dart';

/// {@template cherry_core}
/// Sets the heritage base of all Classes of this package
/// {@endtemplate}

abstract base class CherryCore extends Equatable {
  // Constructors

  /// Constructor stays non-constant for performance-related reasons
  /// {@macro cherry_core}
  CherryCore();

  // Getters & Setters

  /// {@template cherry_core_id}
  /// The unique (randomized) id for all [CherryCore] objects
  /// {@endtemplate}
  String get id => Uuid().v4();

  // Overrides

  @override
  String toString() => id;
}
