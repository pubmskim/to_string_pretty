import 'package:test/test.dart';
import 'package:to_string_pretty/src/impl.dart';

import 'complex1.dart' as complex;
import 'simple.dart' as simple;

void testToStringPretty() {
  test('simple', () {
    final data = simple.Simple(1, '2');
    expect(data.toString(), simple.expected);
  });

  test('complex', () {
    final data = complex.Complex();
    expect(data.toString(), complex.expected);
  });

  test('empty container', () {
    final testCase = [
      [[], '[]'],
      [{}, '{}'],
    ];
    for (final t in testCase) {
      final formatted = toStringPretty(t[0]);
      final expected = t[1];
      expect(formatted, expected);
    }
  });
}
