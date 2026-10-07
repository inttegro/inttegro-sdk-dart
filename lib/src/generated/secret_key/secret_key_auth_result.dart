part of '../../../inttegro.dart';

/// A typed `SecretKeyAuthResult` value used by the Inttegro API.
final class SecretKeyAuthResult implements _InttegroValue {
  final String value;
  const SecretKeyAuthResult(this.value);
  factory SecretKeyAuthResult.fromJson(Object? json) =>
      SecretKeyAuthResult(json as String);
  static const succeeded = SecretKeyAuthResult("succeeded");
  static const failed = SecretKeyAuthResult("failed");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is SecretKeyAuthResult && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
