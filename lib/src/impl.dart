/// Formats the desired object pretty.
///
/// [Example:]
/// ```dart
/// class Inner {
///   Inner();
///   final three = 'clap!';
///
///   @override
///   String toString() => toStringPretty(this, {
///       'three': three,
///     });
/// }
///
/// class Outer {
///   Outer();
///   final one = 1;
///   final two = 2;
///   final three = Inner();
///
///   @override
///   String toString() => toStringPretty(this, {
///       'one': one,
///       'two': two,
///       'three': three,
///     });
/// }
///
/// void main() {
///   print(Outer());
/// }
/// ```
///
/// [Console:]
/// ```bash
///Outer {
///    one: 1
///    two: 2
///    three: Inner {
///        three: clap!
///    },
///},
/// ```
String toStringPretty(Object object, [Map<String, Object> values]) {
  if (object is Iterable) return _toPrettyIterable(object);
  if (object is Map) return _toPrettyMap(object);

  final buf = StringBuffer();

  if (object is String) {
    buf.writeln(object);
  } else {
    buf.writeln('${object.runtimeType} {');
  }
  values?.forEach((key, value) {
    buf.writeAll(_shiftln(value, key));
  });
  buf.write('},');

  return buf.toString();
}

Iterable<String> _shiftln(Object obj, [String name]) sync* {
  String str;
  if (obj is Iterable) {
    str = '$name: ${_toPrettyIterable(obj)}';
  } else if (obj is Map) {
    str = '$name: ${_toPrettyMap(obj)}';
  } else if (name != null) {
    str = '$name: $obj';
  } else {
    str = obj.toString();
  }

  for (final item in str.split('\n')) {
    if (item.endsWith('{') || item.endsWith('[')) {
      yield '    $item\n';
    } else {
      yield '    ${item.replaceFirst(',', '')},\n';
    }
  }
}

String _toPrettyIterable(Iterable iter) {
  if (iter.isEmpty) return '[]';

  final buf = StringBuffer();
  buf.writeln('[');
  for (final item in iter) {
    if (item is Iterable) {
      buf.writeAll(_shiftln(_toPrettyIterable(item)));
    } else if (item is Map) {
      buf.writeAll(_shiftln(_toPrettyMap(item)));
    } else {
      buf.writeAll(_shiftln(item.toString()));
    }
  }
  buf.write('],');
  return buf.toString();
}

String _toPrettyMap(Map map) {
  if (map.isEmpty) return '{}';

  final buf = StringBuffer();
  buf.writeln('{');
  map.forEach((key, value) {
    var str = '$key: ';
    if (value is Iterable) {
      str += _toPrettyIterable(value);
    } else if (value is Map) {
      str += _toPrettyMap(value);
    } else {
      str += value.toString();
    }
    buf.writeAll(_shiftln(str));
  });
  buf.write('},');
  return buf.toString();
}
