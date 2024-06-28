part of 'storage.dart';

abstract base mixin class CrudHandler {
  static Box<E> create<E>(String name) => Hive.box<E>(name);

  T read<T>(String key);

  void update<T>(String key, T value);

  void delete<T>(String key, T value);
}
