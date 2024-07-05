part of 'settings.dart';

/// {@template cherry_filter}
///
/// A class for [UserPreferences] which basically initializes a filter for the user's preferences for searching for other users
///
/// {@endtemplate}

abstract base class CherryFilter extends CherryCore {
  // Properties

  /// {@template cherry_filter_filter_name}
  ///
  /// The name of the descendant's filter of this
  ///
  /// {@endtemplate}
  final String filterName;

  // Constructors

  /// {@macro cherry_filter}
  CherryFilter({
    required this.filterName,
  });

  // Overrides

  @override
  List<Object?> get props => [
        filterName,
      ];
}
