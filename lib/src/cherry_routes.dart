part of '../cherry_core.dart';

final class CherryRoute extends CherryCore {
  static const String initialRoute = '/';

  static const bool ableToChangeInitialRoute = false;

  static const bool ableToChangeRouteTree = false;

  static const String settingsRoute = 'settings';

  static const String giverModeRoute = '${initialRoute}giver/';

  static CherryRoute giverMode = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    type: CherryCoreRouteType.main,
  );

  static CherryRoute giverSettings = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: settingsRoute,
    type: CherryCoreRouteType.sub,
  );

  static CherryRoute discover = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'discover',
    type: CherryCoreRouteType.sub,
  );

  static CherryRoute preferences = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'preferences',
    type: CherryCoreRouteType.sub,
  );

  static CherryRoute profile = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'profile',
    type: CherryCoreRouteType.sub,
  );

  static CherryRoute giverInsights = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'insights',
    type: CherryCoreRouteType.sub,
  );

  static CherryRoute pendingRequests = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'pending_requests',
    type: CherryCoreRouteType.sub,
  );

  static const String receiverModeRoute = '${initialRoute}receiver/';

  static CherryRoute receiverMode = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    type: CherryCoreRouteType.main,
  );

  static CherryRoute receiverSettings = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: settingsRoute,
    type: CherryCoreRouteType.sub,
  );

  static CherryRoute receivedRequests = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: 'received_requests',
    type: CherryCoreRouteType.sub,
  );

  static CherryRoute receiverInsights = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: 'insights',
    type: CherryCoreRouteType.sub,
  );

  static const String chemistryModeRoute = '${initialRoute}chemistry/';

  static CherryRoute chemistryMode = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    type: CherryCoreRouteType.main,
  );

  static CherryRoute chemistrySettings = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: settingsRoute,
    type: CherryCoreRouteType.sub,
  );

  static CherryRoute matches = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: 'matches',
    type: CherryCoreRouteType.sub,
  );

  static CherryRoute chats = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: 'chats',
    type: CherryCoreRouteType.sub,
  );

  static String signUpRoute = '$initialRoute/sign_up';

  static CherryRoute signUp = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
    type: CherryCoreRouteType.main,
  );

  static CherryRoute createAccount = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
    subRoute: 'create_account',
    type: CherryCoreRouteType.sub,
  );

  static CherryRoute login = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
    subRoute: 'login',
    type: CherryCoreRouteType.sub,
  );

  static Map cherryRouteTree = {
    initialRoute: {
      signUpRoute: {
        createAccount,
        login,
      },
      giverModeRoute: {
        giverSettings,
        discover,
        preferences,
        profile,
        giverInsights,
        pendingRequests,
      },
      receiverModeRoute: {
        receivedRequests,
        receiverSettings,
        receivedRequests,
        receiverInsights,
      },
      chemistryModeRoute: {
        chemistrySettings,
        matches,
        chats,
      },
    }
  };

  final CherryUserMode mode;

  final String mainRoute;

  final String? subRoute;

  final CherryCoreRouteType type;

  CherryRoute({
    required this.mode,
    required this.mainRoute,
    required this.type,
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

  CherryUserModeSettings? get assignedSettings => (subRoute == settingsRoute)
      ? switch (mode) {
          CherryUserMode.giver => CherryUserModeSettings.giver,
          CherryUserMode.receiver => CherryUserModeSettings.receiver,
          CherryUserMode.chemistry => CherryUserModeSettings.chemistry,
          CherryUserMode.signUp => null,
        }
      : null;

  @override
  List<Object?> get props => [
        mode,
        mainRoute,
        subRoute,
        type,
      ];

  static void extendRouteTree(
    RouteExtension routeExtension, [
    String initialRoute = CherryRoute.initialRoute,
  ]) {
    switch (ableToChangeRouteTree) {
      case true:
        if (cherryRouteTree[initialRoute] == null) {
          throw CherryCoreErrorException(
            "",
            instanceType: CherryRoute,
          );
        }
        cherryRouteTree[initialRoute].addAll(routeExtension);
        break;
      case false:
        throw CherryCoreWarningException(
          "",
          instanceType: CherryRoute,
        );
    }
  }
}
