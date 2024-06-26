part of '../cherry_core.dart';

typedef CherryCoreExceptionList<T extends CherryCoreException> = List<T>;

typedef CherryCoreExceptionCallback<T> = Future<T> Function(
   CherryCoreExceptionList<CherryCoreException> exceptionTrace,
);
