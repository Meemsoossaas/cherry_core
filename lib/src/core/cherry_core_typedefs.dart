part of 'core.dart';

/// {@template number_list}
///
/// Represents a [List] of numbers.
/// This will check if [T] is type of [num].
/// This indicates that the only valid types are [num], [int] and [double].
///
/// {@endtemplate}
typedef NumberList<T extends num> = List<T>;

/// {@template date_time_list}
///
/// Represents a [List] of [DateTime]'s.
///
/// {@endtemplate}
typedef DateTimeList = List<DateTime>;

/// {@template string_hash_map}
///
/// Represents a map of 'characters' as [String]'s with the keys being their belonging indices.
///
/// {@endtemplate}
typedef StringHashMap = Map<int, String>;
