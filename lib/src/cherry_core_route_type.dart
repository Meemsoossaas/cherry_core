part of '../cherry_core.dart';

enum CherryCoreRouteType {
  initial(
    steps: 0,
  ),
  main(
    steps: 1,
  ),
  sub(
    steps: 2,
  ),
  custom(
    steps: null,
  );

  final int? steps;

  const CherryCoreRouteType({
    required this.steps,
  });
}
