part of '../../payment.dart';

/// Authorization details the payer must act on before a payment can advance.
///
/// Exposes [beneficiary], [scheme], and [expiresAt].
final class NextActionAuthorize implements InttegroValue {
  final String beneficiary;
  final String scheme;
  final DateTime expiresAt;
  const NextActionAuthorize({
    required this.beneficiary,
    required this.scheme,
    required this.expiresAt,
  });
  factory NextActionAuthorize.fromJson(Map<String, Object?> json) =>
      NextActionAuthorize(
        beneficiary: json["beneficiary"] as String,
        scheme: json["scheme"] as String,
        expiresAt: decodeDateTime(json["expires_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "beneficiary": encodeValue(beneficiary),
        "scheme": encodeValue(scheme),
        "expires_at": encodeValue(expiresAt),
      };
}
