part of 'core.dart';

/// {@template date_time_info}
///
/// An enumeration which contains all (optional but crucial) parameters of [DateTime].
/// These are contained int the constructor (`DateTime()`).
/// This enumeration is mostly being utilized for indexing because of the exhaustion.
///
/// {@endtemplate}

enum DateTimeInfo {
  /// {@template date_time_info_year}
  ///
  /// The value index for the year(s).
  ///
  /// {@endtemplate}
  year(),

  /// {@template date_time_info_month}
  ///
  /// The value index for the month(s).
  ///
  /// {@endtemplate}
  month(),

  /// {@template date_time_info_day}
  ///
  /// The value index for the day(s).
  ///
  /// {@endtemplate}
  day(),

  /// {@template date_time_info_hour}
  ///
  /// The value index for the hour(s).
  ///
  /// {@endtemplate}
  hour(),

  /// {@template date_time_info_minute}
  ///
  /// The value index for the minute(s).
  ///
  /// {@endtemplate}
  minute(),

  /// {@template date_time_info_second}
  ///
  /// The value index for the second(s).
  ///
  /// {@endtemplate}
  second(),

  /// {@template date_time_info_millisecond}
  ///
  /// The value index for the millisecond(s).
  ///
  /// {@endtemplate}
  millisecond(),

  /// {@template date_time_info_microsecond}
  ///
  /// The value index for the microsecond(s).
  ///
  /// {@endtemplate}
  microsecond();

  /// {@macro date_time_info}
  const DateTimeInfo();
}
