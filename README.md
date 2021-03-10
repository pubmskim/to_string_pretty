Prints an object pretty.

## Installing

```yaml
dependencies:
  to_string_pretty:
```

```dart
import 'package:to_string_pretty/to_string_pretty.dart';
```

## Usage

- **Basic**

  ```dart
  var data = ['google', 'apple', 'thanks'];
  print(toStringPretty(data));
  ```

  ```
  [
      google,
      apple,
      thanks,
  ],
  ```
  
- **toString()** 

  [**Code**](https://github.com/pubmskim/to_string_pretty/blob/main/example/to_string_pretty_example.dart)

  ```dart
  class ChatMessage {
    // member variables, methods...
    
    @override
    String toString() => toStringPretty(this, {
      'body': message
      'sentBy': sentBy,
      'sentAt': sentAt,
      'group': group,
    });
  }
  
  print(ChatMessage());
  ```

  ```
  ChatMessage {
      body: Thanks,
      sentBy: ChatUser {
          email: hello@example.com,
          name: Liam,
      },
      sentAt: ChatDateTime {
          datetime: 2021-02-21 19:07:00.000,
      },
      group: Flutter Community,
  },
  ```

- **Customizing type name.**

  ```dart
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
  ```

  ```
  JsonType {
      url: https://pub.dev,
      packages: [
          shared_preferences,
          flutter_slidable,
      ],
      datetime: 2021-02-19 02:51:57.413978Z,
      fieldCount: 4,
  },
  ```


## Feature requests and Bug reports

**[here](https://github.com/pubmskim/to_string_pretty/issues)**