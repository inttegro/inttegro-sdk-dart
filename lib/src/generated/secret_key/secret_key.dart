part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class SecretKey implements _InttegroValue {
  final String id;
  final String? label;
  final SecretKeyTokenType tokenType;
  final DateTime issuedAt;
  final DateTime? updatedAt;
  final DateTime? expiresAt;
  final SecretKeyStatus status;
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
        tokenType: SecretKeyTokenType.fromJson(json["token_type"]),
        issuedAt: _decodeDateTime(json["issued_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        status: SecretKeyStatus.fromJson(json["status"]),
        active: json["active"] as bool,
        revokedAt: json["revoked_at"] == null
            ? null
            : _decodeDateTime(json["revoked_at"]),
        lastUsedAt: json["last_used_at"] == null
            ? null
            : _decodeDateTime(json["last_used_at"]),
        usageCount: json["usage_count"] == null
            ? null
            : (json["usage_count"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        "token_type": _encodeValue(tokenType),
        "issued_at": _encodeValue(issuedAt),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        "status": _encodeValue(status),
        "active": _encodeValue(active),
        if (revokedAt != null) "revoked_at": _encodeValue(revokedAt),
        if (lastUsedAt != null) "last_used_at": _encodeValue(lastUsedAt),
        if (usageCount != null) "usage_count": _encodeValue(usageCount),
      };
}
