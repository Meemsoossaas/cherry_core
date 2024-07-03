part of 'storage.dart';

/// {@template cherry_core_box}
///
/// A class which acts as an extended wrapper of [Box]
///
/// {@endtemplate}

final class CherryCoreBox extends CherryCore with CrudHandler {
  // Static Properties

  /// {@template cherry_core_box_core_box_name}
  ///
  /// The name of the 'primary' box
  ///
  /// {@endtemplate}
  static const String coreBoxName = 'cherry_core';

  /// {@macro cherry_core_box}
  static CherryCoreBox coreBox = CherryCoreBox._internal(
    Hive.box(coreBoxName),
  );

  // Properties

  /// {@template cherry_core_box_box}
  ///
  /// The related [Box] to be extended
  ///
  /// {@endtemplate}
  final Box _box;

  /// {@template cherry_core_box_name}
  ///
  /// The name then assigned to [box]
  ///
  /// {@endtemplate}
  final String name;

  // Constructors

  CherryCoreBox._internal(
    this._box, {
    this.name = coreBoxName,
  });

  /// {@template cherry_core_box_new_box}
  ///
  /// Initializes a brand new box
  ///
  /// {@endtemplate}
  CherryCoreBox.newBox(this.name) : _box = CrudHandler.create(name);

  // Factories

  /// {@macro cherry_core_box}
  factory CherryCoreBox() => coreBox;

  // Getters & Setters

  /// {@template cherry_core_box_size}
  ///
  /// Gets the info how many values [box] contains
  ///
  /// {@endtemplate}
  int get size => _box.length;

  /// {@template cherry_core_box_box_name}
  ///
  /// The name of [box] for display purposes
  ///
  /// {@endtemplate}
  String get boxName => name.toUpperCase();

  // Overrides

  @override
  List<Object?> get props => [_box, name];

  @override
  void delete(String key) => _box.delete(key);

  @override
  T read<T>(String key) => _box.get(key) as T;

  @override
  void update<T>(String key, T value) => _box.put(key, value);
}
