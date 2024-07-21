part of 'navigation.dart';

/// {@template cherry_route}
///
/// A class which sets all of the predeclared routes of the Cherry application.
///
/// {@endtemplate}

final class CherryRoute extends CherryCore {
  // Static Properties

  /// {@template cherry_route_initial_route}
  ///
  /// The (constant) initial route of the Cherry application.
  ///
  /// {@endtemplate}
  static const String initialRoute = '/';

  /// {@template cherry_route_able_to_change_initial_route}
  ///
  /// Sets for the operation, if the [initialRoute] can change (e.g. through route extensions).
  ///
  /// {@endtemplate}
  static const bool ableToChangeInitialRoute = false;

  /// {@template cherry_route_able_to_change_route_tree}
  ///
  /// Sets, if [extendRouteTree] can mutate the route tree which is [cherryRouteTree].
  ///
  /// {@endtemplate}
  static bool ableToChangeRouteTree = false;

  /// {@template cherry_route_settings_route}
  ///
  /// The unchangeable route of the route for settings (depending on [CherryUserMode]).
  /// The assembly would be as this example shows:
  /// ```dart
  /// CherryUserMode userMode = CherryUserMode.giver;
  /// final officialSettingsRoute = '${userMode.route}settings/';
  /// ```
  ///
  /// {@endtemplate}
  static const String settingsRoute = 'settings/';

  /// {@template cherry_route_assets_route}
  ///
  /// The unchangeable route of all internal assets.
  ///
  /// {@endtemplate}
  static const String assetsRoute = 'assets/';

  /// {@template cherry_route_giver_mode_route}
  ///
  /// The main route of [CherryUserMode.giver] as [String].
  ///
  /// {@endtemplate}
  static final String giverModeRoute = CherryUserMode.giver.route;

  /// {@template cherry_route_giver_mode}
  ///
  /// The route for [CherryUserMode.giver] as [CherryRoute].
  ///
  /// {@endtemplate}
  static final CherryRoute giverMode = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    type: CherryCoreRouteType.main,
    extendable: true,
  );

  /// {@template cherry_route_giver_settings}
  ///
  /// The route for the Giver Settings in [CherryUserMode.giver].
  ///
  /// {@endtemplate}
  static final CherryRoute giverSettings = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: settingsRoute,
    type: CherryCoreRouteType.sub,
    extendable: true,
  );

  /// {@template cherry_route_discover}
  ///
  /// The route for the discover Page in [CherryUserMode.giver].
  ///
  /// {@endtemplate}
  static final CherryRoute discover = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'discover',
    type: CherryCoreRouteType.sub,
    extendable: false,
  );

  /// {@template cherry_route_preferences}
  ///
  /// The route for the user preferences (as filters) aimed on other users in [CherryUserMode.giver].
  ///
  /// {@endtemplate}
  static final CherryRoute preferences = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'preferences',
    type: CherryCoreRouteType.sub,
    extendable: false,
  );

  /// {@template cherry_route_profile}
  ///
  /// The route for the user profile and profile preview of the current user in [CherryUserMode.giver].
  ///
  /// {@endtemplate}
  static final CherryRoute profile = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'profile',
    type: CherryCoreRouteType.sub,
    extendable: false,
  );

  /// {@template cherry_route_giver_insights}
  ///
  /// The route for the insights on the current user's statistical performance on the application in [CherryUserMode.giver].
  ///
  /// {@endtemplate}
  static final CherryRoute giverInsights = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'insights',
    type: CherryCoreRouteType.sub,
    extendable: false,
  );

  /// {@template cherry_route_pending_requests}
  ///
  /// The route for the pending requests sent by the current user to other user's in [CherryUserMode.giver].
  /// Other's have not yet interacted or have ignored the request.
  ///
  /// {@endtemplate}
  static final CherryRoute pendingRequests = CherryRoute(
    mode: CherryUserMode.giver,
    mainRoute: giverModeRoute,
    subRoute: 'pending_requests',
    type: CherryCoreRouteType.sub,
    extendable: false,
  );

  /// {@template cherry_route_receiver_mode_route}
  ///
  /// The main route of [CherryUserMode.receiver] as [String].
  ///
  /// {@endtemplate}
  static final String receiverModeRoute = CherryUserMode.receiver.name;

  /// {@template cherry_route_receiver_mode}
  ///
  /// The route of [CherryUserMode.receiver] as [CherryRoute].
  ///
  /// {@endtemplate}
  static final CherryRoute receiverMode = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    type: CherryCoreRouteType.main,
    extendable: true,
  );

  /// {@template cherry_route_receiver_settings}
  ///
  /// The route for the settings in [CherryUserMode.receiver].
  ///
  /// {@endtemplate}
  static final CherryRoute receiverSettings = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: settingsRoute,
    type: CherryCoreRouteType.sub,
    extendable: true,
  );

  /// {@template cherry_route_received_requests}
  ///
  /// The route for the received requested from other user's in [CherryUserMode.receiver].
  /// The current user can interact or ignore these requests.
  ///
  /// {@endtemplate}
  static final CherryRoute receivedRequests = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: 'received_requests',
    type: CherryCoreRouteType.sub,
    extendable: false,
  );

  /// {@template cherry_route_receiver_insights}
  ///
  /// The route for the insights on the receiving aspects of the current user's profile in [CherryUserMode.receiver].
  ///
  /// {@endtemplate}
  static final CherryRoute receiverInsights = CherryRoute(
    mode: CherryUserMode.receiver,
    mainRoute: receiverModeRoute,
    subRoute: 'insights',
    type: CherryCoreRouteType.sub,
    extendable: false,
  );

  /// {@template cherry_route_chemistry_mode_route}
  ///
  /// The main route of [CherryUserMode.chemistry] as [String].
  ///
  /// {@endtemplate}
  static final String chemistryModeRoute = CherryUserMode.chemistry.name;

  /// {@template cherry_route_chemistry_mode}
  ///
  /// The route of [CherryUserMode.chemistry] as [CherryRoute].
  ///
  /// {@endtemplate}
  static final CherryRoute chemistryMode = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    type: CherryCoreRouteType.main,
    extendable: true,
  );

  /// {@template cherry_route_chemistry_settings}
  ///
  /// The route for the settings in [CherryUserMode.chemistry].
  ///
  /// {@endtemplate}
  static final CherryRoute chemistrySettings = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: settingsRoute,
    type: CherryCoreRouteType.sub,
    extendable: true,
  );

  /// {@template cherry_route_matches}
  ///
  /// The route for the settings in [CherryUserMode.chemistry].
  ///
  /// {@endtemplate}
  static final CherryRoute matches = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: 'matches',
    type: CherryCoreRouteType.sub,
    extendable: false,
  );

  /// {@template cherry_route_chats}
  ///
  /// The route for all the chats the current user has which other user's in [CherryUserMode.chemistry].
  ///
  /// {@endtemplate}
  static final CherryRoute chats = CherryRoute(
    mode: CherryUserMode.chemistry,
    mainRoute: chemistryModeRoute,
    subRoute: 'chats',
    type: CherryCoreRouteType.sub,
    extendable: true,
  );

  /// {@template cherry_route_sign_up_route}
  ///
  /// The main route for [CherryUserMode.signUp] as [String].
  ///
  /// {@endtemplate}
  static final String signUpRoute = CherryUserMode.signUp.name;

  /// {@template cherry_route_sign_up}
  ///
  /// The route for [CherryUserMode.signUp] as [CherryRoute].
  ///
  /// {@endtemplate}
  static final CherryRoute signUp = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
    type: CherryCoreRouteType.main,
  );

  /// {@template cherry_route_create_account}
  ///
  /// The route for creating a new account in [CherryUserMode.signUp].
  ///
  /// {@endtemplate}
  static final CherryRoute createAccount = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
    subRoute: 'create_account',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_login}
  ///
  /// The route for logging into an existing account in [CherryUserMode.signUp].
  ///
  /// {@endtemplate}
  static final CherryRoute login = CherryRoute(
    mode: CherryUserMode.signUp,
    mainRoute: signUpRoute,
    subRoute: 'login',
    type: CherryCoreRouteType.sub,
  );

  /// {@template cherry_route_cherry_route_tree}
  ///
  /// The official route tree of the Cherry application including [initialRoute] and all the routes of [CherryUserMode].
  ///
  /// {@endtemplate}
  static final Map cherryRouteTree = {
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

  /// {@template cherry_route_main_routes}
  ///
  /// Statically contains all the main routes of the Cherry application.
  ///
  /// {@endtemplate}
  static final List<String> mainRoutes = [
    giverModeRoute,
    receiverModeRoute,
    chemistryModeRoute,
    signUpRoute,
  ];

  /// {@template cherry_route_assets}
  ///
  /// The official route tree of all predefined assets of the Cherry application.
  ///
  /// {@endtemplate}
  static final CherryRoute assets = CherryRoute(
    mode: null,
    mainRoute: assetsRoute,
    type: CherryCoreRouteType.initial,
    extendable: false,
  );

  /// {@template cherry_route_icons}
  ///
  /// The official route tree of all predefined icons of the Cherry application.
  ///
  /// {@endtemplate}
  static final CherryRoute icons = CherryRoute(
    mode: null,
    mainRoute: assetsRoute,
    type: CherryCoreRouteType.main,
    subRoute: 'icons/',
    extendable: false,
  );

  /// {@template cherry_route_images}
  ///
  /// The official route tree of all predefined images of the Cherry application.
  ///
  /// {@endtemplate}
  static final CherryRoute images = CherryRoute(
    mode: null,
    mainRoute: assetsRoute,
    type: CherryCoreRouteType.main,
    subRoute: 'images/',
    extendable: true,
  );

  /// {@template cherry_route_videos}
  ///
  /// The official route tree of all predefined images of the Cherry application.
  ///
  /// {@endtemplate}
  static final CherryRoute videos = CherryRoute(
    mode: null,
    mainRoute: assetsRoute,
    type: CherryCoreRouteType.main,
    subRoute: 'videos/',
    extendable: true,
  );

  // Properties

  /// {@template cherry_route_mode}
  ///
  /// Finalizes which [CherryUserMode] this contains.
  ///
  /// {@endtemplate}
  final CherryUserMode? mode;

  /// {@template cherry_route_main_route}
  ///
  /// Finalizes which main route of [CherryUserMode] this contains.
  ///
  /// {@endtemplate}
  final String mainRoute;

  /// {@template cherry_route_sub_route}
  ///
  /// Finalizes which sub route (if not null) this contains.
  ///
  /// {@endtemplate}
  final String? subRoute;

  /// {@template cherry_route_type}
  ///
  /// Finalizes which type of route this contains.
  ///
  /// {@endtemplate}
  final CherryCoreRouteType type;

  /// {@template cherry_route_extendable}
  ///
  /// Finalizes, if this is later on extendable for new sub routes.
  ///
  /// {@endtemplate}
  final bool extendable;

  // Constructors

  /// {@macro cherry_route}
  CherryRoute({
    required this.mode,
    required this.mainRoute,
    required this.type,
    this.subRoute,
    this.extendable = false,
  }) : assert(
          (mainRoute == giverModeRoute) ||
              (mainRoute == receiverModeRoute) ||
              (mainRoute == chemistryModeRoute) ||
              (mainRoute == signUpRoute),
          'The main route does not align with the predefined ones.',
        );

  // Getters & Setters

  /// {@template cherry_route_full_route}
  ///
  /// Gets the summarized route of the [mainRoute] and [subRoute] (includes the [initialRoute] too).
  ///
  /// {@endtemplate}
  String get fullRoute => '$initialRoute$mainRoute${subRoute ?? ''}';

  /// {@template cherry_route_amount_of_main_routes}
  ///
  /// Statically gets the number of the main routes of [mainRoutes].
  ///
  /// {@endtemplate}
  static int get amountOfMainRoutes => mainRoutes.length;

  /// {@template cherry_route_route_index}
  ///
  /// Gets the index of the main route depending on [CherryUserMode].
  ///
  /// {@endtemplate}
  int get routeIndex => _routeIndex;

  int get _routeIndex => switch (mode) {
        CherryUserMode.signUp => 0,
        CherryUserMode.giver => 1,
        CherryUserMode.receiver => 2,
        CherryUserMode.chemistry => 3,
        null => 4,
      };

  /// {@template cherry_route_assigned_settings}
  ///
  /// Gets the settings depending on [CherryUserMode].
  ///
  /// {@endtemplate}
  CherryUserModeSettings? get assignedSettings => _assignedSettings;

  CherryUserModeSettings? get _assignedSettings => (subRoute == settingsRoute)
      ? switch (mode) {
          CherryUserMode.giver => CherryUserModeSettings.giver,
          CherryUserMode.receiver => CherryUserModeSettings.receiver,
          CherryUserMode.chemistry => CherryUserModeSettings.chemistry,
          CherryUserMode.signUp => null,
          null => null,
        }
      : null;

  // Methods

  /// {@template cherry_route_copy_with}
  ///
  /// Copys this with the additional alternate parameters.
  ///
  /// {@endtemplate}
  CherryRoute copyWith({
    CherryUserMode? mode,
    String? mainRoute,
    String? subRoute,
    CherryCoreRouteType? type,
    bool? extendable,
  }) =>
      CherryRoute(
        mode: mode ?? this.mode,
        mainRoute: mainRoute ?? this.mainRoute,
        subRoute: subRoute ?? this.subRoute,
        type: type ?? this.type,
        extendable: extendable ?? this.extendable,
      );

  /// {@template cherry_route_extend_route_tree}
  ///
  /// Allows to extends [cherryRouteTree] (if [ableToChangeRouteTree] is `true`).
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
  List<Object?> get props =>
      <Object?>[
        mode,
        mainRoute,
        subRoute,
        type,
      ] +
      super.props;
}
