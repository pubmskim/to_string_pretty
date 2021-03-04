import 'package:to_string_pretty/to_string_pretty.dart';

void main() {
  final json = {
    'url': 'https://pub.dev',
    'packages': [
      'shared_preferences',
      'flutter_slidable',
    ],
    'datetime': DateTime.parse('2021-02-18T19:51:57.4139787-07:00'),
    'fieldCount': 4,
  };

  print(toStringPretty('JsonType', json));
}
