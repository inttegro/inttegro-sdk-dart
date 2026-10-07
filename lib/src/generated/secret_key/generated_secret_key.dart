part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class GeneratedSecretKey implements _InttegroValue {
  final String id;
  final String? label;
  final SecretKeyTokenType tokenType;
  final DateTime issuedAt;
  final String token;
  const GeneratedSecretKey({
    required this.id,
    this.label,
    required this.tokenType,
    required this.issuedAt,
    required this.token,
  });
  factory GeneratedSecretKey.fromJson(Map<String, Object?> json) =>
      GeneratedSecretKey(
        id: json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        tokenType: SecretKeyTokenType.fromJson(json["token_type"]),
        issuedAt: _decodeDateTime(json["issued_at"]),
        token: json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        "token_type": _encodeValue(tokenType),
        "issued_at": _encodeValue(issuedAt),
        "token": _encodeValue(token),
      };
}
