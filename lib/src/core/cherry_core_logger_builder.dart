part of 'core.dart';

base class CherryCoreLoggerBuilder extends CherryCore {
  final Logger logger;

  CherryCoreLoggerBuilder(
    this.logger,
  );

  @override
  List<Object?> get props => [
        logger,
      ];
}
