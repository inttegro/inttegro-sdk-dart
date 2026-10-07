part of '../../secret_key.dart';

/// Metadata and usage state for an Inttegro secret key.
///
/// The secret token itself is not part of this model. Key material returned at
/// generation time is represented separately by [GeneratedSecretKey].
final class SecretKey implements InttegroValue {
  final String id;
  final String? label;
  final TokenType tokenType;
  final DateTime issuedAt;
  final DateTime? updatedAt;
  final DateTime? expiresAt;
  final Status status;
  final bool active;
  final DateTime? revokedAt;
  final DateTime? lastUsedAt;
  final int? usageCount;
  const SecretKey({
    required this.id,
    this.label,
    required this.tokenType,
    required this.issuedAt,
    this.updatedAt,
    this.expiresAt,
    required this.status,
    required this.active,
    this.revokedAt,
    this.lastUsedAt,
    this.usageCount,
  });
  factory SecretKey.fromJson(Map<String, Object?> json) => SecretKey(
        id: json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        tokenType: TokenType.fromJson(json["token_type"]),
        issuedAt: decodeDateTime(json["issued_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : decodeDateTime(json["updated_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : decodeDateTime(json["expires_at"]),
        status: Status.fromJson(json["status"]),
        active: json["active"] as bool,
        revokedAt: json["revoked_at"] == null
            ? null
            : decodeDateTime(json["revoked_at"]),
        lastUsedAt: json["last_used_at"] == null
            ? null
            : decodeDateTime(json["last_used_at"]),
        usageCount: json["usage_count"] == null
            ? null
            : (json["usage_count"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        if (label != null) "label": encodeValue(label),
        "token_type": encodeValue(tokenType),
        "issued_at": encodeValue(issuedAt),
        if (updatedAt != null) "updated_at": encodeValue(updatedAt),
        if (expiresAt != null) "expires_at": encodeValue(expiresAt),
        "status": encodeValue(status),
        "active": encodeValue(active),
        if (revokedAt != null) "revoked_at": encodeValue(revokedAt),
        if (lastUsedAt != null) "last_used_at": encodeValue(lastUsedAt),
        if (usageCount != null) "usage_count": encodeValue(usageCount),
      };
}
