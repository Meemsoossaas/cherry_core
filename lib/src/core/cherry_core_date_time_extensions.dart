part of 'core.dart';

/// {@template cherry_core_date_time_extensions}
///
/// Some extra functionalities for [DateTime] for building this API.
///
/// {@endtemplate}

extension CherryCoreDateTimeExtensions on DateTime {
  // Getters & Setters

  /// {@template cherry_core_date_time_extensions_is_in_the_future}
  ///
  /// Gets a [bool] to declare if this is a [DateTime] of the future.
  /// (This means that this represents a date which will happen in the future).
  ///
  /// {@endtemplate}
  bool get isInTheFuture => this > DateTime.now();

  /// {@template cherry_core_date_time_extensions_is_a_leap_year}
  ///
  /// Returns a [bool] if this is a leap year.
  /// This is being based on [year].
  /// The last leap year to occur was [CherryDateTimeInfoFetcher.lastLeapYear].
  ///
  /// {@endtemplate}
  bool get isALeapYear => _isALeapYear;

  bool get _isALeapYear {
    try {
      return CherryDateTimeInfoFetcher.isALeapYear(year);
    } on CherryCoreWarningException catch (_) {
      return false;
    }
  }

  /// {@template cherry_core_date_time_extensions_as_duration}
  ///
  /// Converts this to a [Duration].
  /// This could be essential for creating a [Timer].
  ///
  /// {@endtemplate}
  Duration get asDuration => _asDuration;

  Duration get _asDuration => Duration(
        days: inDays,
        hours: hour,
        minutes: minute,
        seconds: second,
        milliseconds: millisecond,
        microseconds: microsecond,
      );

  /// {@template cherry_core_date_time_extensions_in_years}
  ///
  /// Returns [year].
  /// (Alternative just utilize `this.year`).
  ///
  /// {@endtemplate}
  int get inYears => year;

  /// {@template cherry_core_date_time_extensions_in_Months}
  ///
  /// Converts this into months.
  ///
  /// {@endtemplate}
  int get inMonths => (year * DateTime.monthsPerYear) + month;

  /// {@template cherry_core_date_time_extensions_in_days}
  ///
  /// Converts this into days.
  ///
  /// {@endtemplate}
  int get inDays => _inDays;

  int get _inDays {
    final dateMap = CherryDateTimeInfoFetcher.daysPerMonth;
    int daysResult = 0;
    for (int i = CherryDateTimeInfoFetcher.yearZero; i <= year; i++) {
      if (CherryDateTimeInfoFetcher.leapYearsSinceYearZero.contains(i)) {
        dateMap.forEach(
          (key, value) {
            if (key == DateTime.february) {
              daysResult += value + 1;
            } else {
              daysResult += value;
            }
          },
        );
      } else {
        dateMap.forEach(
          (_, value) {
            daysResult += value;
          },
        );
      }
    }
    return daysResult + day;
  }

  /// {@template cherry_core_date_time_extensions_in_hours}
  ///
  /// Converts this into hours.
  ///
  /// {@endtemplate}
  int get inHours => (inDays * Duration.hoursPerDay) + hour;

  /// {@template cherry_core_date_time_extensions_in_minutes}
  ///
  /// Converts this into minutes.
  ///
  /// {@endtemplate}
  int get inMinutes => (inHours * Duration.minutesPerHour) + minute;

  /// {@template cherry_core_date_time_extensions_in_seconds}
  ///
  /// Converts this into seconds.
  ///
  /// {@endtemplate}
  int get inSeconds => (inMinutes * Duration.secondsPerMinute) + second;

  /// {@template cherry_core_date_time_extensions_in_milliseconds}
  ///
  /// Converts this into milliseconds.
  ///
  /// {@endtemplate}
  int get inMilliseconds =>
      (inSeconds * Duration.millisecondsPerSecond) + millisecond;

  /// {@template cherry_core_date_time_extensions_in_microseconds}
  ///
  /// Converts this into microseconds.
  ///
  /// {@endtemplate}
  int get inMicroseconds =>
      (inMilliseconds * Duration.microsecondsPerMillisecond) + microsecond;

  // Operators

  /// {@template cherry_core_date_time_extensions_not_greater_than_operator}
  ///
  /// Returns a [bool] if `this` has occurred before [other] (which would be `true`).
  ///
  /// {@endtemplate}
  bool operator <(DateTime other) => isBefore(other);

  /// {@template cherry_core_date_time_extensions_greater_than_operator}
  ///
  /// Returns a [bool] if `this` has occurred after [other] (which would be `true`).
  ///
  /// {@endtemplate}
  bool operator >(DateTime other) => isAfter(other);

  /// {@template cherry_core_date_time_extensions_plus_operator}
  ///
  /// Adds [other] to this.
  ///
  /// {@endtemplate}
  DateTime operator +(Duration other) => add(other);

  /// {@template cherry_core_date_time_extensions_minus_operator}
  ///
  /// Subtracts [other] to this.
  ///
  /// {@endtemplate}
  DateTime operator -(Duration other) => subtract(other);

  /// {@template cherry_core_date_time_extensions_index_operator}
  ///
  /// Returns one of the date properties of this depending on the index.
  /// These properties being as follows:
  ///  - [year]
  ///  - [month]
  ///  - [day]
  ///  - [hour]
  ///  - [minute]
  ///  - [second]
  ///  - [millisecond]
  ///  - [microsecond]
  ///
  /// Valid types of [index] are [int], [String] and [DateTimeInfo].
  ///
  /// Valid index values (per type) are as follows:
  /// ```dart
  /// typedef ValidDateTimeIndices<T> = Map<T, int>;
  ///
  /// final DateTime now = DateTime.now();
  ///
  /// const ValidDateTimeIndices<int> validIntegerIndices = {
  ///   0: now.year,
  ///   1: now.month,
  ///   2: now.day,
  ///   3: now.hour,
  ///   4: now.minute,
  ///   5: now.second,
  ///   6: now.millisecond,
  ///   7: now.microsecond,
  /// };
  ///
  /// const ValidDateTimeIndices<String> validStringIndices = {
  ///   'year': now.year,
  ///   'month': now.month,
  ///   'day': now.day,
  ///   'hour': now.hour,
  ///   'minute': now.minute,
  ///   'second': now.second,
  ///   'millisecond': now.millisecond,
  ///   'microsecond': now.microsecond,
  /// };
  ///
  /// const ValidDateTimeIndices<DateTimeInfo> validDateTimeInfoIndices = {
  ///   DateTimeInfo.year: now.year,
  ///   DateTimeInfo.month: now.month,
  ///   DateTimeInfo.day: now.day,
  ///   DateTimeInfo.hour: now.hour,
  ///   DateTimeInfo.minute: now.minute,
  ///   DateTimeInfo.second: now.second,
  ///   DateTimeInfo.millisecond: now.millisecond,
  ///   DateTimeInfo.microsecond: now.microsecond,
  /// };
  ///
  /// // Getting the year of now
  ///
  /// print(now[0]); // SUCCESS
  /// print(now['year']); // SUCCESS
  /// print(now[DateTimeInfo.year]); // SUCCESS
  ///
  /// print(now[8]); // ERROR -> "index: '8' out of range"
  /// print(now['nanosecond']); // ERROR -> "index: 'nanosecond' out of range"
  /// print(now[3.5]); // ERROR -> "index is not type of 'int', 'String' or 'DateTimeInfo'"
  ///
  /// print(now[now.microsecond]); // SUCCESS (NO ERROR) -> DateTimeInfo is an enum and is therefore exhaustive
  /// ```
  ///
  /// {@endtemplate}
  int operator [](Object index) => _indexOperator(index);

  int _indexOperator(Object index) {
    if (index is int) {
      switch (index) {
        case 0:
          return year;
        case 1:
          return month;
        case 2:
          return day;
        case 3:
          return hour;
        case 4:
          return minute;
        case 5:
          return second;
        case 6:
          return millisecond;
        case 7:
          return microsecond;
        default:
          throw CherryCoreErrorException(
            'index: \'$index\' out of range',
            instanceType: DateTime,
          );
      }
    } else if (index is String) {
      switch (index) {
        case 'year':
          return year;
        case 'month':
          return month;
        case 'day':
          return day;
        case 'hour':
          return hour;
        case 'minute':
          return minute;
        case 'second':
          return second;
        case 'millisecond':
          return millisecond;
        case 'microsecond':
          return microsecond;
        default:
          throw CherryCoreErrorException(
            'index: \'$index\' out of range',
            instanceType: DateTime,
          );
      }
    } else if (index is DateTimeInfo) {
      switch (index) {
        case DateTimeInfo.year:
          return year;
        case DateTimeInfo.month:
          return month;
        case DateTimeInfo.day:
          return day;
        case DateTimeInfo.hour:
          return hour;
        case DateTimeInfo.minute:
          return minute;
        case DateTimeInfo.second:
          return second;
        case DateTimeInfo.millisecond:
          return millisecond;
        case DateTimeInfo.microsecond:
          return microsecond;
      }
    } else {
      throw CherryCoreErrorException(
        'index is not type of \'$int\', \'$String\' or \'$DateTimeInfo\'',
        instanceType: DateTime,
      );
    }
  }

  // Methods

  /// {@template cherry_core_date_time_extensions_is_a_minor}
  ///
  /// Returns a [bool] if this represents a date of birthday of a minor.
  ///
  /// {@endtemplate}
  bool isAMinor({int minimumAge = 18}) =>
      this > CherryDateTimeInfoFetcher.adultDateTime(minimumAge: minimumAge);

  /// {@template cherry_core_date_time_extensions_is_an_adult}
  ///
  /// Returns a [bool] if this represents a date of birthday of an Adult.
  ///
  /// {@endtemplate}
  bool isAnAdult({int minimumAge = 18}) =>
      this < CherryDateTimeInfoFetcher.adultDateTime(minimumAge: minimumAge);

  /// {@template cherry_core_date_time_extensions_copy_with}
  ///
  /// Copys this with the additional alternate parameters.
  ///
  /// {@endtemplate}
  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) =>
      DateTime(
        year ?? this.year,
        month ?? this.month,
        day ?? this.day,
        hour ?? this.hour,
        minute ?? this.minute,
        second ?? this.second,
        millisecond ?? this.millisecond,
        microsecond ?? this.microsecond,
      );
}
