part of 'storage.dart';

/// {@template cherry_core_box}
///
/// A class which acts as an extended wrapper of [Box].
///
/// {@endtemplate}

final class CherryCoreBox extends CherryCore with CherryCoreCrudHandler {
  // Static Properties

  /// {@template cherry_core_box_core_box_name}
  ///
  /// The name of the 'primary' box.
  ///
  /// {@endtemplate}
  static const String coreBoxName = 'cherry_core';

  /// {@macro cherry_core_box}
  static CherryCoreBox coreBox = CherryCoreBox._(
    Hive.box(coreBoxName),
  );

  // Properties

  /// {@template cherry_core_box_box}
  ///
  /// The related [Box] to be extended.
  ///
  /// {@endtemplate}
  final Box _box;

  /// {@template cherry_core_box_name}
  ///
  /// The name then assigned to [box].
  ///
  /// {@endtemplate}
  final String name;

  // Constructors

  CherryCoreBox._(
    this._box, {
    this.name = coreBoxName,
  });

  /// {@template cherry_core_box_new_box}
  ///
  /// Initializes a brand new box.
  ///
  /// {@endtemplate}
  CherryCoreBox.newBox(this.name) : _box = Hive.box(name);

  // Factories

  /// {@macro cherry_core_box}
  factory CherryCoreBox() => coreBox;

  // Getters & Setters

  /// {@template cherry_core_box_size}
  ///
  /// Gets the info how many values [box] contains.
  ///
  /// {@endtemplate}
  int get size => _box.length;

  /// {@template cherry_core_box_box_name}
  ///
  /// The name of [box] for display purposes.
  ///
  /// {@endtemplate}
  String get boxName => name.toUpperCase();

  // Overrides

  @override
  List<Object?> get props => <Object?>[_box, name] + super.props;

  @override
  Future<void> delete(String key) async => await _box.delete(key);

  @override
  T read<T>(String key) => _box.get(key) as T;

  @override
  Future<void> update<T>(String key, T value) async =>
      await _box.put(key, value);
}
