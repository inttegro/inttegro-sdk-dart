part of '../../secret_key.dart';

/// Secret key material returned once when a key is generated.
///
/// Exposes [id], [label], [tokenType], and [issuedAt], among other contract
/// fields.
final class Generated implements InttegroValue {
  final String id;
  final String? label;
  final TokenType tokenType;
  final DateTime issuedAt;
  final String token;
  const Generated({
    required this.id,
    this.label,
    required this.tokenType,
    required this.issuedAt,
    required this.token,
  });
  factory Generated.fromJson(Map<String, Object?> json) => Generated(
        id: json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        tokenType: TokenType.fromJson(json["token_type"]),
        issuedAt: decodeDateTime(json["issued_at"]),
        token: json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        if (label != null) "label": encodeValue(label),
        "token_type": encodeValue(tokenType),
        "issued_at": encodeValue(issuedAt),
        "token": encodeValue(token),
      };
}
