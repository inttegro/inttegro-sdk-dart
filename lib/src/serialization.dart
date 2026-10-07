import 'dart:typed_data';

abstract interface class InttegroValue {
  Object? toJson();
}

Object? encodeValue(Object? value) {
  if (value is InttegroValue) {
    return value.toJson();
  }
  if (value is Uint8List) {
    return value.toList();
  }
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }
  if (value is List) {
    return value.map(encodeValue).toList();
  }
  if (value is Map) {
    return value.map(
      (key, item) => MapEntry(key.toString(), encodeValue(item)),
    );
  }
  return value;
}

DateTime decodeDateTime(Object? value) {
  if (value is! String) {
    throw FormatException('Expected an ISO-8601 timestamp, got $value');
  }
  final decoded = DateTime.tryParse(value);
  if (decoded == null || !value.contains(RegExp(r'(Z|[+-]\d\d:\d\d)$'))) {
    throw FormatException('Invalid offset-aware ISO-8601 timestamp: $value');
  }
  return decoded;
}

void expectExactKeys(
  Map<String, Object?> value,
  Set<String> expected,
  String name,
) {
  if (value.length != expected.length ||
      value.keys.any((key) => !expected.contains(key))) {
    throw FormatException('Invalid $name shape');
  }
}
