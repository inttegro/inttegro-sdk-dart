part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ApplicationSecretKey implements _InttegroValue {
  final String? id;
  final String? tokenType;
  final DateTime? issuedAt;
  final String? token;
  const ApplicationSecretKey({
    this.id,
    this.tokenType,
    this.issuedAt,
    this.token,
  });
  factory ApplicationSecretKey.fromJson(
    Map<String, Object?> json,
  ) =>
      ApplicationSecretKey(
        id: json["id"] == null ? null : json["id"] as String,
        tokenType:
            json["token_type"] == null ? null : json["token_type"] as String,
        issuedAt: json["issued_at"] == null
            ? null
            : _decodeDateTime(json["issued_at"]),
        token: json["token"] == null ? null : json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (tokenType != null) "token_type": _encodeValue(tokenType),
        if (issuedAt != null) "issued_at": _encodeValue(issuedAt),
        if (token != null) "token": _encodeValue(token),
      };
}
