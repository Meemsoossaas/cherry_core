part of 'navigation.dart';

/// {@template cherry_route}
///
/// A class which sets all of the predeclared routes of the Cherry application
///
/// {@endtemplate}

final class CherryRoute extends CherryCore {
  // Static Properties

  /// {@template cherry_route_initialRoute}
  ///
  /// The (constant) initial route of the Cherry application
  ///
  /// {@endtemplate}
  static const String initialRoute = '/';

  /// {@template cherry_route_ableToChangeInitialRoute}
  ///
  /// Sets for the operation, if the [initialRoute] can change (e.g. through route extensions)
  ///
  /// {@endtemplate}
  static const bool ableToChangeInitialRoute = false;

  /// {@template cherry_route_ableToChangeRouteTree}
  ///
  /// Sets, if [extendRouteTree] can mutate the route tree which is [cherryRouteTree]
  ///
  /// {@endtemplate}
  static const bool ableToChangeRouteTree = false;

  /// {@template cherry_route_settingsRoute}
  ///
  /// The unchangeable route of the route for settings (depending on [CherryUserMode])
  /// The assembly would be as this example shows:
  /// ```dart
  /// CherryUserMode userMode = CherryUserMode.giver;
  /// final officialSettingsRoute = '${userMode.route}settings';
  /// ```
  ///
  /// {@endtemplate}
  static const String settingsRoute = 'settings';

  /// {@template cherry_route_giverModeRoute}
  ///
  /// The main route of [CherryUserMode.giver] as [String]
  ///
  /// {@endtemplate}
  static String giverModeRoute = CherryUserMode.giver.route;

  /// {@template cherry_route_giverMode}
  ///
  /// The route for [CherryUserMode.giver] as [CherryRoute]
  ///
  /// {@endtemplate}
  static CherryRoute giverMode = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    type: CherryCoreRouteType.main,
  );

  /// {@template cherry_route_giverSettings}
  ///
  /// The route for the Giver Settings in [CherryUserMode.giver]
  ///
  /// {@endtemplate}
  static CherryRoute giverSettings = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: settingsRoute,
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_discover}
  ///
  /// The route for the discover Page in [CherryUserMode.giver]
  ///
  /// {@endtemplate}
  static CherryRoute discover = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'discover',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_preferences}
  ///
  /// The route for the user preferences (as filters) aimed on other users in [CherryUserMode.giver]
  ///
  /// {@endtemplate}
  static CherryRoute preferences = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'preferences',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_profile}
  ///
  /// The route for the user profile and profile preview of the current user in [CherryUserMode.giver]
  ///
  /// {@endtemplate}
  static CherryRoute profile = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'profile',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_giverInsights}
  ///
  /// The route for the insights on the current user's statistical performance on the application in [CherryUserMode.giver]
  ///
  /// {@endtemplate}
  static CherryRoute giverInsights = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'insights',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_pendingRequests}
  ///
  /// The route for the pending requests sent by the current user to other user's in [CherryUserMode.giver]
  /// Other's have not yet interacted or have ignored the request
  ///
  /// {@endtemplate}
  static CherryRoute pendingRequests = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'pending_requests',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_receiverModeRoute}
  ///
  /// The main route of [CherryUserMode.receiver] as [String]
  ///
  /// {@endtemplate}
  static String receiverModeRoute = CherryUserMode.receiver.name;

  /// {@template cherry_route_receiverMode}
  ///
  /// The route of [CherryUserMode.receiver] as [CherryRoute]
  ///
  /// {@endtemplate}
  static CherryRoute receiverMode = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    type: CherryCoreRouteType.main,
  );

  /// {@template cherry_route_receiverSettings}
  ///
  /// The route for the settings in [CherryUserMode.receiver]
  ///
  /// {@endtemplate}
  static CherryRoute receiverSettings = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: settingsRoute,
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_receivedRequests}
  ///
  /// The route for the received requested from other user's in [CherryUserMode.receiver]
  /// The current user can interact or ignore these requests
  ///
  /// {@endtemplate}
  static CherryRoute receivedRequests = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: 'received_requests',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_receiverInsights}
  ///
  /// The route for the insights on the receiving aspects of the current user's profile in [CherryUserMode.receiver]
  ///
  /// {@endtemplate}
  static CherryRoute receiverInsights = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: 'insights',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_chemistryModeRoute}
  ///
  /// The main route of [CherryUserMode.chemistry] as [String]
  ///
  /// {@endtemplate}
  static String chemistryModeRoute = CherryUserMode.chemistry.name;

  /// {@template cherry_route_chemistryMode}
  ///
  /// The route of [CherryUserMode.chemistry] as [CherryRoute]
  ///
  /// {@endtemplate}
  static CherryRoute chemistryMode = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    type: CherryCoreRouteType.main,
  );

  /// {@template cherry_route_chemistrySettings}
  ///
  /// The route for the settings in [CherryUserMode.chemistry]
  ///
  /// {@endtemplate}
  static CherryRoute chemistrySettings = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: settingsRoute,
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_matches}
  ///
  /// The route for the settings in [CherryUserMode.chemistry]
  ///
  /// {@endtemplate}
  static CherryRoute matches = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: 'matches',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_chats}
  ///
  /// The route for all the chats the current user has which other user's in [CherryUserMode.chemistry]
  ///
  /// {@endtemplate}
  static CherryRoute chats = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: 'chats',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_signUpRoute}
  ///
  /// The main route for [CherryUserMode.signUp] as [String]
  ///
  /// {@endtemplate}
  static String signUpRoute = CherryUserMode.signUp.name;

  /// {@template cherry_route_signUp}
  ///
  /// The route for [CherryUserMode.signUp] as [CherryRoute]
  ///
  /// {@endtemplate}
  static CherryRoute signUp = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
    type: CherryCoreRouteType.main,
  );

  /// {@template cherry_route_createAccount}
  ///
  /// The route for creating a new account in [CherryUserMode.signUp]
  ///
  /// {@endtemplate}
  static CherryRoute createAccount = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
    subRoute: 'create_account',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_login}
  ///
  /// The route for logging into an existing account in [CherryUserMode.signUp]
  ///
  /// {@endtemplate}
  static CherryRoute login = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
    subRoute: 'login',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_cherryRouteTree}
  ///
  /// The official route tree of the Cherry application including [initialRoute] and all the routes of [CherryUserMode]
  ///
  /// {@endtemplate}
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

  /// {@template cherry_route_}
  ///
  /// Statically contains all the main routes of the Cherry application
  ///
  /// {@endtemplate}
  static List<String> mainRoutes = [
    giverModeRoute,
    receiverModeRoute,
    chemistryModeRoute,
    signUpRoute,
  ];

  // Properties

  /// {@template cherry_route_mode}
  ///
  /// Finalizes which [CherryUserMode] this contains
  ///
  /// {@endtemplate}
  final CherryUserMode mode;

  /// {@template cherry_route_mainRoute}
  ///
  /// Finalizes which main route of [CherryUserMode] this contains
  ///
  /// {@endtemplate}
  final String mainRoute;

  /// {@template cherry_route_subRoute}
  ///
  /// Finalizes which sub route (if not null) this contains
  ///
  /// {@endtemplate}
  final String? subRoute;

  /// {@template cherry_route_type}
  ///
  /// Finalizes which type of route this contains
  ///
  /// {@endtemplate}
  final CherryCoreRouteType type;

  // Constructors

  /// {@macro cherry_route}
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

  // Getters & Setters

  /// {@template cherry_route_fullRoute}
  ///
  /// Gets the summarized route of the [mainRoute] and [subRoute] (includes the [initialRoute] too)
  ///
  /// {@endtemplate}
  String get fullRoute => '$initialRoute$mainRoute${subRoute ?? ''}';

  /// {@template cherry_route_amountOfMainRoutes}
  ///
  /// Statically gets the number of the main routes of [mainRoutes]
  ///
  /// {@endtemplate}
  static int get amountOfMainRoutes => mainRoutes.length;

  /// {@template cherry_route_routeIndex}
  ///
  /// Gets the index of the main route depending on [CherryUserMode]
  ///
  /// {@endtemplate}
  int get routeIndex => switch (mode) {
        CherryUserMode.signUp => 0,
        CherryUserMode.giver => 1,
        CherryUserMode.receiver => 2,
        CherryUserMode.chemistry => 3,
      };

  /// {@template cherry_route_assignedSettings}
  ///
  /// Gets the settings depending on [CherryUserMode]
  ///
  /// {@endtemplate}
  CherryUserModeSettings? get assignedSettings => (subRoute == settingsRoute)
      ? switch (mode) {
          CherryUserMode.giver => CherryUserModeSettings.giver,
          CherryUserMode.receiver => CherryUserModeSettings.receiver,
          CherryUserMode.chemistry => CherryUserModeSettings.chemistry,
          CherryUserMode.signUp => null,
        }
      : null;

  // Static Methods

  /// {@template cherry_route_extendRouteTree}
  ///
  /// Allows to extends [cherryRouteTree] (if [ableToChangeRouteTree] is `true`)
  ///
  /// {@endtemplate}
  static void extendRouteTree(
    RouteExtension routeExtension, [
    String initialRoute = CherryRoute.initialRoute,
  ]) =>
      _extendRouteTree(
        routeExtension,
        initialRoute,
      );

  static void _extendRouteTree(
    RouteExtension routeExtension, [
    String initialRoute = CherryRoute.initialRoute,
  ]) {
    if (routeExtension.length != 1) {
      throw CherryCoreErrorException(
        "",
        instanceType: CherryRoute,
      );
    }
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

  // Overrides

  @override
  List<Object?> get props => [
        mode,
        mainRoute,
        subRoute,
        type,
      ];
}
