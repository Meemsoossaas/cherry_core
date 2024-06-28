part of 'core.dart';

extension ListExtensions<T> on List<T> {
  List<T> pushFront(T element) => <T>[element, ...this];

  List<T> pushBack(T element) => <T>[...this, element];
}
