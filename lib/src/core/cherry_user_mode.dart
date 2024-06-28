part of 'core.dart';

enum CherryUserMode {
  giver(
    modeName: 'Giver',
    route: '${CherryRoute.initialRoute}giver/',
  ),
  receiver(
    modeName: 'Receiver',
    route: '${CherryRoute.initialRoute}receiver/',
  ),
  chemistry(
    modeName: 'Chemistry',
    route: '${CherryRoute.initialRoute}chemistry/',
  ),
  signUp(
    modeName: null,
    route: '${CherryRoute.initialRoute}signup/',
  );

  final String route;

  final String? modeName;

  const CherryUserMode({
    required this.modeName,
    required this.route,
  });

  @override
  String toString() =>
      this == CherryUserMode.signUp ? 'Sign Up' : '$modeName Mode';
}
