part of '../../otp.dart';

/// The character set used to generate a one-time password.
final class AlphabetType implements InttegroValue {
  final String value;
  const AlphabetType(this.value);
  factory AlphabetType.fromJson(Object? json) => AlphabetType(json as String);
  static const numeric = AlphabetType("numeric");
  static const alpha = AlphabetType("alpha");
  static const alphanumeric = AlphabetType("alphanumeric");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AlphabetType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
