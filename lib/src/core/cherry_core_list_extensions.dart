part of 'core.dart';

/// {@template cherry_core_list_extensions}
///
/// Some essential extensions for building the API.
///
/// {@endtemplate}

extension CherryCoreListExtensions<T> on List<T> {
  // Methods

  /// {@template cherry_core_list_extensions_push_front}
  ///
  /// Pushes the element in front of the list.
  ///
  /// {@endtemplate}
  List<T> pushFront(T element) => <T>[element, ...this];

  /// {@template cherry_core_list_extensions_push_back}
  ///
  /// Pushes the element back to the list (could use [add] instead, too).
  ///
  /// {@endtemplate}
  List<T> pushBack(T element) => <T>[...this, element];
}
