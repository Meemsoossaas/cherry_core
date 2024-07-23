part of 'core.dart';

/// {@template cherry_core}
///
/// Sets the heritage base of all Classes of this package
///
/// {@endtemplate}

abstract class CherryCore extends Equatable {
  // Properties

  /// {@template cherry_core_uuid}
  ///
  /// Initializes [Uuid] to generate the following ids
  ///
  /// {@endtemplate}
  final Uuid uuid;

  // Late Properties

  /// {@template cherry_core_id1}
  ///
  /// The time-based id of this
  ///
  /// {@endtemplate}
  late final String id1;

  /// {@template cherry_core_id4}
  ///
  /// The RNG based id if this
  ///
  /// {@endtemplate}
  late final String id4;

  /// {@template cherry_core_id6}
  ///
  /// The draft time-based id of this (Version 6)
  ///
  /// {@endtemplate}
  late final String id6;

  /// {@template cherry_core_id7}
  ///
  /// The draft time-based id of this (Version 7)
  ///
  /// {@endtemplate}
  late final String id7;

  /// {@template cherry_core_id8}
  ///
  /// The draft time-based id of this (Version 8)
  ///
  /// {@endtemplate}
  late final String id8;

  // Constructors

  /// {@macro cherry_core}
  CherryCore() : uuid = Uuid() {
    id1 = uuid.v1();
    id4 = uuid.v4();
    id6 = uuid.v6();
    id7 = uuid.v7();
    id8 = uuid.v8();
  }

  // Overrides

  @override
  List<Object?> get props => <Object?>[
        uuid,
        id1,
        id4,
        id6,
        id7,
        id8,
      ];

  @override
  bool? get stringify => false;

  @override
  String toString() => """
  V1: $id1
  V4: $id4
  V6: $id6
  V7: $id7
  V8: $id8
  """;
}
