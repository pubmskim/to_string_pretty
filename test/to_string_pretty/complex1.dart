import 'dart:io' as io;

import 'package:to_string_pretty/src/impl.dart';

class Complex {
  var value1 = '123';
  var value2 = {
    '1': 2,
    '2': 3,
    'lst': [1, 2, 3]
  };
  var value3 = [
    [
      1,
      2,
      3,
    ],
    [
      4,
      5,
      6,
    ],
    [
      7,
      8,
      9,
    ],
  ];

  @override
  String toString() => toStringPretty(this, {
        'value1': value1,
        'value2': value2,
        'value3': value3,
      });
}

final expected = io.File('test/to_string_pretty/complex.txt')
    .readAsStringSync()
    .replaceAll('\r', '');
