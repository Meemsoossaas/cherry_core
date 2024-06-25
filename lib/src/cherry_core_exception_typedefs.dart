part of '../cherry_core.dart';

typedef CherryCoreExceptionList<T extends CherryCoreException> = List<T>;

typedef CherryCoreExceptionCallback<T> = T Function({
  required CherryCoreExceptionList<CherryCoreException> exceptionTrace,
});
