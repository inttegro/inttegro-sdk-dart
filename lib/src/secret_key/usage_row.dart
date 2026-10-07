part of '../../secret_key.dart';

/// One recorded secret-key authentication attempt.
///
/// Exposes [secretKeyId], [occurredAt], and [authResult].
final class UsageRow implements InttegroValue {
  final String secretKeyId;
  final DateTime occurredAt;
  final AuthResult authResult;
  const UsageRow({
    required this.secretKeyId,
    required this.occurredAt,
    required this.authResult,
  });
  factory UsageRow.fromJson(Map<String, Object?> json) => UsageRow(
        secretKeyId: json["secret_key_id"] as String,
        occurredAt: decodeDateTime(json["occurred_at"]),
        authResult: AuthResult.fromJson(json["auth_result"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "secret_key_id": encodeValue(secretKeyId),
        "occurred_at": encodeValue(occurredAt),
        "auth_result": encodeValue(authResult),
      };
}
