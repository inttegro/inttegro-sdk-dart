part of '../../../inttegro.dart';

/// A typed `SecretKeyStatus` value used by the Inttegro API.
final class SecretKeyStatus implements _InttegroValue {
  final String value;
  const SecretKeyStatus(this.value);
  factory SecretKeyStatus.fromJson(Object? json) =>
      SecretKeyStatus(json as String);
  static const active = SecretKeyStatus("active");
  static const revoked = SecretKeyStatus("revoked");
  static const expired = SecretKeyStatus("expired");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is SecretKeyStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
