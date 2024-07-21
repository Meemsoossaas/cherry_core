part of 'services.dart';

/// {@template cherry_service_type}
///
/// An enumeration which handles the different kinds of service which the descendants of [CherryService] could be created and initialized for.
///
/// {@endtemplate}

enum CherryServiceType {
  // Values

  /// {@template cherry_service_type_frontend}
  ///
  /// The descendant of [CherryService] will be utilized for frontend tasks.
  ///
  /// {@endtemplate}
  frontend(
    description: 'A service for front-end functionalities',
  ),

  /// {@template cherry_service_type_backend}
  ///
  /// The descendant of [CherryService] will be utilized for backend tasks.
  ///
  /// {@endtemplate}
  backend(
    description: 'A service for back-end functionalities',
  ),

  /// {@template cherry_service_type_internal}
  ///
  /// The descendant of [CherryService] will be utilized for tasks related to the Cherry application.
  ///
  /// {@endtemplate}
  internal(
    description: 'A service for internal (Cherry only related) functionalities',
  ),

  /// {@template cherry_service_type_error_handling}
  ///
  /// The descendant of [CherryService] will be utilized for error handling tasks.
  ///
  /// {@endtemplate}
  errorHandling(
    description: 'A service for error handling',
  ),

  /// {@template cherry_service_type_other}
  ///
  /// The descendant of [CherryService] will be utilized for other unlisted tasks.
  ///
  /// {@endtemplate}
  other(
    description: 'A service for other functionalities',
  ),

  /// {@template cherry_service_type_undefined}
  ///
  /// The descendant of [CherryService] will be utilized for other tasks which are undefined by the developers.
  ///
  /// {@endtemplate}
  undefined(
    description: 'A service for undefined functionalities',
  );

  // Properties

  /// {@template cherry_service_type_description}
  ///
  /// The description of the service, when displayed.
  ///
  /// {@endtemplate}
  final String description;

  // Constructors

  /// {@macro cherry_service_type}
  const CherryServiceType({
    required this.description,
  });
}
