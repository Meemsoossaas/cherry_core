part of 'core.dart';

/// {@template cherry_core_exception_typedefs}
///
/// Typedefs for the exception handling in this API. In particular for [CherryCoreException].
///
/// {@endtemplate}

/// {@template cherry_core_exception_typedefs_cherry_core_exception_list}
///
/// Each descendant of [CherryCoreException] contains a stack trace which acts as a list. This is being used to check that [T] is an descendant of [CherryCoreException].
///
/// {@endtemplate}
typedef CherryCoreExceptionList<T extends CherryCoreException> = List<T>;

/// {@template cherry_core_exception_typedefs_cherry_core_exception_callback}
///
/// The function for fetching an exception where [T] is being returned as the callback value (This progress could occur asynchronously, too).
///
/// {@endtemplate}
typedef CherryCoreExceptionCallback<T> = T Function(
  CherryCoreExceptionList<CherryCoreException> exceptionTrace,
);

/// {@template cherry_core_exception_typedefs_cherry_core_fetch_result}
///
/// The function for fetching an exception where [T] is being returned as the callback value (This progress could occur asynchronously, too).
///
/// {@endtemplate}
typedef CherryCoreFetchResult<T> = ({
  CherryCoreException? exception,
  T value,
});
