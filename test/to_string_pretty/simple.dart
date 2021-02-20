import 'dart:io';

import 'package:to_string_pretty/src/impl.dart';

class Simple {
  Simple(this.value1, this.value2);
  final int value1;
  final String value2;

  @override
  String toString() => toStringPretty(this, {
        'value1': value1,
        'value2': value2,
      });
}

final expected = File('test/to_string_pretty/simple.txt')
    .readAsStringSync()
    .replaceAll('\r', '');
