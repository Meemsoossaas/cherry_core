part of 'core.dart';

/// {@template cherry_date_time_info_fetcher}
///
/// A class containing and handling data as needed for [CherryCoreDateTimeExtensions].
/// (This is `abstract` and `final` because this is intend to only static values and methods.)
///
/// {@endtemplate}

abstract final class CherryDateTimeInfoFetcher extends CherryCore {
  // Static Properties

  /// {@template cherry_date_time_info_fetcher_year_of_epoch}
  ///
  /// The year where the epoch happened.
  ///
  /// {@endtemplate}
  static const int yearOfEpoch = 1970;

  /// {@template cherry_date_time_info_fetcher_last_leap_year}
  ///
  /// The year of the last leap year (This will be updated on the regular).
  /// (Last one occurred in 2024).
  ///
  /// {@endtemplate}
  static const int lastLeapYear = 2024;

  /// {@template cherry_date_time_info_fetcher_leap_year_difference}
  ///
  /// The annual differences when leap years occur.
  ///
  /// {@endtemplate}
  static const int leapYearDifference = 4;

  /// {@template cherry_date_time_info_fetcher_year_zero}
  ///
  /// The year zero which indicated the turning point from AC to BC.
  ///
  /// {@endtemplate}
  static const int yearZero = 0;

  /// {@template cherry_date_time_info_fetcher_days_in_a_year}
  ///
  /// How many days are in a year (non leap year).
  ///
  /// {@endtemplate}
  static const int daysInAYear = 365;

  /// {@template cherry_date_time_info_fetcher_days_in_a_leap_year}
  ///
  /// How many days are in a leap year.
  ///
  /// {@endtemplate}
  static const int daysInALeapYear = 366;

  /// {@template cherry_date_time_info_fetcher_days_per_month}
  ///
  /// A map containing the data how many days each month has.
  /// The keys are copied by the static constants of [DateTime].
  /// These being as follows:
  ///   - [DateTime.january]
  ///   - [DateTime.february]
  ///   - [DateTime.march]
  ///   - [DateTime.april]
  ///   - [DateTime.may]
  ///   - [DateTime.june]
  ///   - [DateTime.july]
  ///   - [DateTime.august]
  ///   - [DateTime.september]
  ///   - [DateTime.october]
  ///   - [DateTime.november]
  ///   - [DateTime.december]
  ///
  /// {@endtemplate}
  static const Map<int, int> daysPerMonth = {
    DateTime.january: 31,
    DateTime.february: 28,
    DateTime.march: 31,
    DateTime.april: 30,
    DateTime.may: 31,
    DateTime.june: 30,
    DateTime.july: 31,
    DateTime.august: 31,
    DateTime.september: 30,
    DateTime.october: 31,
    DateTime.november: 30,
    DateTime.december: 31,
  };

  // Static Getters

  /// {@template cherry_date_time_info_fetcher_leap_years_since_epoch}
  ///
  /// Gets a list of the years which were a leap year since epoch.
  /// Reference is obviously [yearOfEpoch).
  ///
  /// {@endtemplate}
  static NumberList<int> get leapYearsSinceEpoch => _leapYearsSinceEpoch;

  @protected
  static NumberList<int> get _leapYearsSinceEpoch {
    int currentYear = lastLeapYear;
    final NumberList<int> list = [];
    final int yearDifference =
        ((lastLeapYear - yearOfEpoch) / ~leapYearDifference) as int;
    for (int i = 0; i < yearDifference; i++) {
      list.add(currentYear);
      currentYear -= leapYearDifference;
    }
    list.add(yearZero);
    return list;
  }

  /// {@template cherry_date_time_info_fetcher_leap_date_times_since_epoch}
  ///
  /// Gets the correlated [DateTime]'s since epoch.
  /// It is to note that the unique date of the leap year which only occurs when it is present is being added to this.
  /// ```dart
  /// void main() {
  ///   List<DateTime> leapDateTimesSinceEpoch = CherryDateTimeInfoFetcher.leapDateTimesSinceEpoch;
  ///   for (final dateTime in leapDateTimesSinceEpoch) {
  ///     print(dateTime.year); // Outputs the leap year
  ///     print(dateTime.month); // Outputs '2'
  ///     print(dateTime.day); //  Outputs '29'
  ///   }
  /// }
  /// ```
  ///
  /// {@endtemplate}
  static DateTimeList get leapDateTimesSinceEpoch => _leapDateTimesSinceEpoch;

  @protected
  static DateTimeList get _leapDateTimesSinceEpoch {
    DateTimeList list = [];
    for (final years in leapYearsSinceEpoch) {
      list.add(
        DateTime(years, 2, 29),
      );
    }
    return list;
  }

  /// {@template cherry_date_time_info_fetcher_leap_years_since_year_zero}
  ///
  /// Gets a list of the years which were a leap year since year zero.
  /// Reference is obviously [yearZero).
  ///
  /// {@endtemplate}
  static NumberList<int> get leapYearsSinceYearZero => _leapYearsSinceYearZero;

  @protected
  static NumberList<int> get _leapYearsSinceYearZero {
    int currentYear = lastLeapYear;
    final NumberList<int> list = [];
    final int yearDifference =
        (lastLeapYear - yearZero) ~/ leapYearDifference;
    for (int i = 0; i < yearDifference; i++) {
      list.add(currentYear);
      currentYear -= leapYearDifference;
    }
    return list;
  }

  /// {@template cherry_date_time_info_fetcher_leap_date_times_year_zero}
  ///
  /// Gets the correlated [DateTime]'s since year zero.
  /// It is to note that the unique date of the leap year which only occurs when it is present is being added to this.
  /// ```dart
  /// void main() {
  ///   List<DateTime> leapYearsSinceYearZero = CherryDateTimeInfoFetcher.leapYearsSinceYearZero;
  ///   for (final dateTime in leapYearsSinceYearZero) {
  ///     print(dateTime.year); // Outputs the leap year
  ///     print(dateTime.month); // Outputs '2'
  ///     print(dateTime.day); //  Outputs '29'
  ///   }
  /// }
  /// ```
  ///
  /// {@endtemplate}
  static DateTimeList get leapDateTimesYearZero => _leapDateTimesYearZero;

  @protected
  static DateTimeList get _leapDateTimesYearZero {
    DateTimeList list = [];
    for (final year in leapYearsSinceYearZero) {
      list.add(
        DateTime(year, 2, 29),
      );
    }
    return list;
  }

  // Static Methods

  /// {@template cherry_date_time_info_fetcher_future_leap_years}
  ///
  /// Returns a [List] of the upcoming leap years as [DateTime]'s.
  /// The (only) parameter [nextAmountOfYears] represents how many years should be displayed.
  ///
  /// {@endtemplate}
  static NumberList<int> futureLeapYears([int nextAmountOfYears = 5]) =>
      _futureLeapYears(nextAmountOfYears);

  static NumberList<int> _futureLeapYears([int nextAmountOfYears = 5]) {
    if (nextAmountOfYears <= 0) {
      throw CherryCoreWarningException(
        '\'nextAmountOfYears\' must be greater than 0. If else the logic would not make any sense',
        instanceType: CherryDateTimeInfoFetcher,
      );
    }
    int currentYear = lastLeapYear + leapYearDifference;
    final NumberList<int> list = [];
    for (int i = 0; i < nextAmountOfYears; i++) {
      list.add(currentYear);
      currentYear += leapYearDifference;
    }
    return list;
  }

  /// {@template cherry_date_time_info_fetcher_is_a_leap_year}
  ///
  /// Returns a [bool], if this is a leap year.
  ///
  /// {@endtemplate}
  static bool isALeapYear(int year) => _isALeapYear(year);

  static bool _isALeapYear(int year) => (year < yearZero)
      ? throw CherryCoreWarningException(
          '\'year\' must be at least $yearZero',
          instanceType: CherryDateTimeInfoFetcher,
        )
      : leapYearsSinceYearZero.where((value) => value == year).length == 1;

  // Static Methods

  /// {@template cherry_date_time_info_fetcher_adult_date_time}
  ///
  /// Returns a [DateTime] which represents the latest date where an individual has turned to an adult.
  /// The default value of [minimumAge] is `18`.
  /// Affects will only occur to [year], [month] and [day] because these fields are the most important ones.
  ///
  /// {@endtemplate}
  static DateTime adultDateTime({
    int minimumAge = 18,
  }) =>
      _adultDateTime(minimumAge: minimumAge);

  static DateTime _adultDateTime({
    int minimumAge = 18,
  }) {
    final now = DateTime.now();
    return DateTime(
      now.year - minimumAge,
      now.month,
      now.day,
    );
  }
}
