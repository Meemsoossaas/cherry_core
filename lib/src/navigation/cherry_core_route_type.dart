part of 'navigation.dart';

/// {@template cherry_core_route_type}
///
/// An enumeration containing all types of routes
///
/// {@endtemplate}

enum CherryCoreRouteType implements Comparable<CherryCoreRouteType> {
  // Values

  /// {@template cherry_core_route_type_initial}
  ///
  /// The route is an initial route of the project
  ///
  /// {@endtemplate}
  initial(
    steps: 0,
  ),

  /// {@template cherry_core_route_type}
  ///
  /// The route is a primary route
  ///
  /// {@endtemplate}
  main(
    steps: 1,
  ),

  /// {@template cherry_core_route_type}
  ///
  /// The route is a sub route of [main]
  ///
  /// {@endtemplate}
  sub(
    steps: 2,
  ),

  /// {@template cherry_core_route_type}
  ///
  /// The route is custom route which indicates that it does not compliment the structure of the project
  ///
  /// {@endtemplate}
  custom(
    steps: null,
  );

  // Properties

  /// {@template cherry_core_route_type}
  ///
  /// The inner width in terms how much steps it takes to reach `this`
  ///
  /// {@endtemplate}
  final int? steps;

  // Constructor

  /// {@macro cherry_core_route_type}
  const CherryCoreRouteType({
    required this.steps,
  });

  // Methods

  @override
  int compareTo(CherryCoreRouteType other) =>
      steps == null ? 0 : (steps! - other.steps!);
}
