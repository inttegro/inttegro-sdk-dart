part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class SecretKeyUsageRow implements _InttegroValue {
  final String secretKeyId;
  final DateTime occurredAt;
  final SecretKeyAuthResult authResult;
  const SecretKeyUsageRow({
    required this.secretKeyId,
    required this.occurredAt,
    required this.authResult,
  });
  factory SecretKeyUsageRow.fromJson(Map<String, Object?> json) =>
      SecretKeyUsageRow(
        secretKeyId: json["secret_key_id"] as String,
        occurredAt: _decodeDateTime(json["occurred_at"]),
        authResult: SecretKeyAuthResult.fromJson(json["auth_result"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "secret_key_id": _encodeValue(secretKeyId),
        "occurred_at": _encodeValue(occurredAt),
        "auth_result": _encodeValue(authResult),
      };
}
