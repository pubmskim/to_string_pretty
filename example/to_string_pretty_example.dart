import 'package:to_string_pretty/to_string_pretty.dart';
import 'package:meta/meta.dart';

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

class ChatUser {
  final email = 'hello@example.com';
  final name = 'Liam';
  final _isNameVisible = true;

  ChatUser();

  @override
  String toString() => toStringPretty(this, {
        'email': email,
        if (_isNameVisible) 'name': name,
      });
}

class ChatDateTime {
  final DateTime datetime;

  ChatDateTime(this.datetime);

  @override
  String toString() => toStringPretty(this, {
        'datetime': datetime.toLocal(),
      });
}

void main() {
  print(ChatMessage());
}
