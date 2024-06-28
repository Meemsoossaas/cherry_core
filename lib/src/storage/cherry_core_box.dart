part of 'storage.dart';

final class CherryCoreBox extends CherryCore with CrudHandler {
  static const String coreBoxName = 'cherry_core';

  final Box box;

  final String name;

  static CherryCoreBox coreBox = CherryCoreBox._internal(
    box: Hive.box(coreBoxName),
  );

  CherryCoreBox._internal({
    required this.box,
    this.name = coreBoxName,
  });

  CherryCoreBox.newBox(this.name) : box = CrudHandler.create(name);

  factory CherryCoreBox() => coreBox;

  int get size => box.length;

  String get boxName => name.toUpperCase();

  @override
  List<Object?> get props => [box, name];

  @override
  void delete<T>(String key, T value) => box.delete(key);

  @override
  T read<T>(String key) => box.get(key) as T;

  @override
  void update<T>(String key, T value) => box.put(key, value);
}
