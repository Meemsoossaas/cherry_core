part of 'navigation.dart';

/// {@template route_extension}
///
/// The body, if a route is trying to be extended:
///
/// ```dart
/// void main() {
///   final loverSettings = CherryRoute(
///     mode: null,
///     mainRoute: '${CherryRoute.initialRoute}lover/',
///     subRoute: CherryRoute.settingsRoute,
///     type: CherryCoreRouteType.sub,
///     extendable: false,
///   );
///   final newMainRoute = {'lover/': {loverSettings}};
///   assert(newMainRoute.length == 1);
///   CherryRoute.extendRouteTree(newMainRoute);
/// }
/// ```
///
/// {@endtemplate}
typedef RouteExtension = Map<String, Set<CherryRoute>>;
