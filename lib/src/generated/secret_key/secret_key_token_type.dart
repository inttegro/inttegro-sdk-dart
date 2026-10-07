part of '../../../inttegro.dart';

/// A typed `SecretKeyTokenType` value used by the Inttegro API.
final class SecretKeyTokenType implements _InttegroValue {
  final String value;
  const SecretKeyTokenType(this.value);
  factory SecretKeyTokenType.fromJson(Object? json) =>
      SecretKeyTokenType(json as String);
  static const bearer = SecretKeyTokenType("bearer");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is SecretKeyTokenType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
