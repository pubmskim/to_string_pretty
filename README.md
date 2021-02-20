## toStringPretty

Prints an object pretty.

## Example

```dart
// ChatUser, ChatDateTime ...

class ChatMessage {
  final String message = 'Thanks';
  final ChatUser sentBy = ChatUser();
  final ChatDateTime sentAt = ChatDateTime(DateTime(2021, 02, 21, 19, 07));
  final String group = 'Flutter Community';

  @override
  String toString() => toStringPretty(this, {
        'body': message,
        'sentBy': sentBy,
        'sentAt': sentAt,
        'group': group,
      });
}

void main() {
  print(ChatMessage());
}
```

- **Result**

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



## Installing

```yaml
dependencies:
  to_string_pretty:
```

```dart
import 'package:to_string_pretty/to_string_pretty.dart';
```

