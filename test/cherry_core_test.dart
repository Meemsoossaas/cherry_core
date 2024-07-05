import 'package:cherry_core/cherry_core.dart';
import 'package:hive/hive.dart';
import 'package:test/test.dart';

void main() async {
  final init = await CherryCoreCrudHandler.initializeSettings<Box>(
    initCallback: (String boxName) async => await Hive.openBox(boxName),
  );
  group(
    'lol',
    () {
      test(
        'PUR',
        () {
          equals(
            init[CherryCoreCrudHandler.giverSettings] ==
                GiverSettings.instance.box,
          );
        },
      );
    },
  );
}
