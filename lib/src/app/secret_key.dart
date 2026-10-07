part of '../../app.dart';

/// Secret key material issued for an application.
///
/// Exposes [id], [tokenType], [issuedAt], and [token].
final class SecretKey implements InttegroValue {
  final String? id;
  final String? tokenType;
  final DateTime? issuedAt;
  final String? token;
  const SecretKey({
    this.id,
    this.tokenType,
    this.issuedAt,
    this.token,
  });
  factory SecretKey.fromJson(
    Map<String, Object?> json,
  ) =>
      SecretKey(
        id: json["id"] == null ? null : json["id"] as String,
        tokenType:
            json["token_type"] == null ? null : json["token_type"] as String,
        issuedAt: json["issued_at"] == null
            ? null
            : decodeDateTime(json["issued_at"]),
        token: json["token"] == null ? null : json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": encodeValue(id),
        if (tokenType != null) "token_type": encodeValue(tokenType),
        if (issuedAt != null) "issued_at": encodeValue(issuedAt),
        if (token != null) "token": encodeValue(token),
      };
}
