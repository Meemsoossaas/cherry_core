import 'package:cherry_core/cherry_core.dart';
import 'package:hive/hive.dart' show Hive, Box;
import 'package:test/test.dart';

void main() async {
  final init = await CherryCoreCrudHandler.initializeSettings<Box>(
    initCallback: (String boxName) async => await Hive.openBox(boxName),
  );
  group(
    'cherry_core_core_tests',
    () {},
  );
  group(
    'cherry_core_navigation_tests',
    () {},
  );
  group(
    'cherry_core_settings_tests',
    () {},
  );
  group(
    'cherry_core_storage_tests',
    () {},
  );
}
