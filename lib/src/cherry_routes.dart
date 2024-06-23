part of '../cherry_core.dart';

final class CherryRoute extends CherryCore {
  static const String initialRoute = '/';

  static const String settingsRoute = 'settings';

  static const String giverModeRoute = '${initialRoute}giver/';

  static const CherryRoute giverMode = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
  );

  static const CherryRoute giverSettings = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: settingsRoute,
  );

  static const CherryRoute discover = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'discover',
  );

  static const CherryRoute preferences = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'preferences',
  );

  static const CherryRoute profile = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'profile',
  );

  static const CherryRoute giverInsights = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'insights',
  );

  static const CherryRoute pendingRequests = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'pending_requests',
  );

  static const String receiverModeRoute = '${initialRoute}receiver/';

  static const CherryRoute receiverMode = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
  );

  static const CherryRoute receiverSettings = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: settingsRoute,
  );

  static const CherryRoute receivedRequests = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: 'received_requests',
  );

  static const CherryRoute receiverInsights = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: 'insights',
  );

  static const String chemistryModeRoute = '${initialRoute}chemistry/';

  static const CherryRoute chemistryMode = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
  );

  static const CherryRoute chemistrySettings = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: settingsRoute,
  );

  static const CherryRoute matches = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: 'matches',
  );

  static const CherryRoute chats = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: 'chats',
  );

  static const String signUpRoute = '$initialRoute/sign_up';

  static const CherryRoute signUp = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
  );

  static const CherryRoute createAccount = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
    subRoute: 'create_account',
  );

  static const CherryRoute login = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
    subRoute: 'login',
  );

  final CherryUserMode mode;
  final String mainRoute;
  final String? subRoute;

  const CherryRoute({
    required this.mode,
    required this.mainRoute,
    this.subRoute,
  }) : assert(
          (mainRoute == giverModeRoute) ||
              (mainRoute == receiverModeRoute) ||
              (mainRoute == chemistryModeRoute) ||
              (mainRoute == signUpRoute),
          'The main route does not align with the predefined ones.',
        );

  String get fullRoute => '$mainRoute${subRoute ?? ''}';

  static List<String> get mainRoutes => [
        giverModeRoute,
        receiverModeRoute,
        chemistryModeRoute,
        signUpRoute,
      ];

  static int get amountOfMainRoutes => mainRoutes.length;

  int get routeIndex => switch (mode) {
        CherryUserMode.signUp => 0,
        CherryUserMode.giver => 1,
        CherryUserMode.receiver => 2,
        CherryUserMode.chemistry => 3,
      };

  CherryUserModeSettings? get assignedSettings =>
      (subRoute == settingsRoute) ? switch (mode) {
        CherryUserMode.giver => CherryUserModeSettings.giver,
        CherryUserMode.receiver => CherryUserModeSettings.receiver,
        CherryUserMode.chemistry => CherryUserModeSettings.chemistry,
        CherryUserMode.signUp => null,
      } : null;

  @override
  List<Object?> get props => [
        mode,
        mainRoute,
        subRoute,
      ];
}
