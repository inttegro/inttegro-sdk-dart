part of '../../../inttegro.dart';

/// A typed `OTPAlphabetType` value used by the Inttegro API.
final class OTPAlphabetType implements _InttegroValue {
  final String value;
  const OTPAlphabetType(this.value);
  factory OTPAlphabetType.fromJson(Object? json) =>
      OTPAlphabetType(json as String);
  static const numeric = OTPAlphabetType("numeric");
  static const alpha = OTPAlphabetType("alpha");
  static const alphanumeric = OTPAlphabetType("alphanumeric");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OTPAlphabetType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
