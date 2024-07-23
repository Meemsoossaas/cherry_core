import 'dart:math' as math;

import 'package:cherry_core/cherry_core.dart';
import 'package:cherry_core/core.dart'
    show
        CherryCoreListExtensions,
        CherryCoreStringExtensions,
        CherryCoreDateTimeExtensions,
        DateTimeInfo,
        CherryCoreErrorException;
import 'package:test/test.dart' show group, test, expect, equals;

void main() {
  group(
    'core_classes',
    () {
      group(
        'assets',
        () {
          test(
            'image_asset',
            () {
              final imageAsset = CherryImageAsset(
                initialPath: 'assets/images/image.png',
                onAssetChangedCallback: (newPath) {
                  if (newPath.startsWith('assets/images/')) {
                    print(true);
                  }
                },
                onAssetInitializedCallback: () {
                  print(DateTime.now());
                }
              );
              imageAsset.changePath('assets/images/image2.png');
              expect(
                imageAsset.assetType,
                equals(AssetType.image),
              );
              expect(
                imageAsset.currentPath,
                equals('assets/images/image2.png'),
              );
              imageAsset.resetPath();
              expect(
                imageAsset.currentPath,
                equals(imageAsset.initialPath),
              );
            },
          );

          test(
            'video_asset',
            () {},
          );

          test(
            'icon_asset',
            () {},
          );
        },
      );

    },
  );

  group(
    'core_extensions_test',
    () {
      test(
        'cherry_core_list_extensions',
        () {
          // pushFront
          final list1 = <int>[]
              .pushFront(1)
              .pushFront(2)
              .pushFront(3)
              .pushFront(4)
              .pushFront(5);
          expect(list1[0], equals(5));
          // pushBack
          final list2 = <String>[]
              .pushBack('A')
              .pushBack('B')
              .pushBack('C')
              .pushBack('D')
              .pushBack('E');
          expect(list2[list2.length - 1], equals('E'));
        },
      );

      test(
        'cherry_core_string_extensions',
        () {
          // isAChar
          expect(''.isAChar, equals(false));
          expect('x'.isAChar, equals(true));
          expect('abc'.isAChar, equals(false));
          // isMonotone
          expect('T'.isMonotone, equals(true));
          expect('-----'.isMonotone, equals(true));
          expect('meem'.isMonotone, equals(false));
          // isNotMonotone
          expect('a'.isNotMonotone, equals(false));
          expect('lol'.isNotMonotone, equals(true));
          expect('-'.isNotMonotone, equals(false));
          // parseableAsNum
          expect('10'.parseableAsNum, equals(true));
          expect('10 + 2 + 2'.parseableAsNum, equals(false));
          expect('x + 2'.parseableAsNum, equals(false));
          // parseableAsInt
          expect('10.5'.parseableAsInt, equals(false));
          expect('16'.parseableAsInt, equals(true));
          expect('cos(90)'.parseableAsInt, equals(false));
          // parseableAsDouble
          expect('10.534242424'.parseableAsDouble, equals(true));
          expect('${math.pi}'.parseableAsDouble, equals(true));
          expect('${math.e}'.parseableAsDouble, equals(true));
          expect('5'.parseableAsDouble, equals(true));
          // asMap
          expect(
              '12345'.asMap, equals({0: '1', 1: '2', 2: '3', 3: '4', 4: '5'}));
          expect('v'.asMap, equals({0: 'v'}));
          expect('-.-'.asMap, equals({0: '-', 1: '.', 2: '-'}));
        },
      );

      test(
        'cherry_core_date_time_extensions',
        () {
          // isInTheFuture
          final futureDate = DateTime(2024, 12, 31);
          expect(futureDate.isInTheFuture, equals(true));
          // isALeapYear
          final leapYear = DateTime(2020, 2, 20);
          expect(leapYear.isALeapYear, equals(true));
          // asDuration
          final genericDateTime = DateTime(2000, 1, 1);
          expect(genericDateTime.asDuration.runtimeType, equals(Duration));
          //
          final birthday = DateTime(2006, 1, 28);
          // inYears
          expect(birthday.inYears, equals(2006));
          // inMonths
          expect(birthday.inMonths, equals(2006 * 12 + 1));
          // inDays
          expect(birthday.inDays, equals(733084));
          // inHours
          expect(birthday.inHours, equals(733084 * 24 + birthday.hour));
          // inMinutes
          expect(birthday.inMinutes,
              equals(birthday.inHours * 60 + birthday.minute));
          // inSeconds
          expect(birthday.inSeconds,
              equals(birthday.inMinutes * 60 + birthday.second));
          // inMilliseconds
          expect(birthday.inMilliseconds,
              equals(birthday.inSeconds * 1000 + birthday.millisecond));
          // inYears
          expect(birthday.inMicroseconds,
              equals(birthday.inMilliseconds * 1000 + birthday.microsecond));
          // <
          expect(DateTime(2006) < DateTime(2008), equals(true));
          // >
          expect(DateTime(2008) > DateTime(2000), equals(true));
          // +
          expect(DateTime(2006, 1, 28) + Duration(days: 1),
              equals(DateTime(2006, 1, 29)));
          // -
          expect(DateTime(2006, 1, 29) - Duration(days: 1),
              equals(DateTime(2006, 1, 28)));
          // []
          final indexDateTime = DateTime(1951, 7, 13);
          expect(indexDateTime[0], equals(1951));
          expect(indexDateTime['year'], equals(1951));
          expect(indexDateTime[DateTimeInfo.year], equals(1951));
          // [] (ERROR)
          bool? success;
          try {
            final year = indexDateTime[3.5];
            success = true;
          } on CherryCoreErrorException catch (_) {
            success = false;
          } catch (_) {
            success = null;
          }
          expect(success, equals(false));
          // isAMinor
          expect(DateTime(2008, 2, 1).isAMinor(), equals(true));
          // isAnAdult
          expect(DateTime(2006, 1, 28).isAnAdult(), equals(true));
        },
      );
    },
  );
}
