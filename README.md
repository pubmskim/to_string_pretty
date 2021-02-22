## toStringPretty

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
  // stdout
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
  // stdout
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






## Feature requests and Bug reports

**[here](https://github.com/pubmskim/to_string_pretty/issues)**