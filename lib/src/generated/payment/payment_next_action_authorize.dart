part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentNextActionAuthorize implements _InttegroValue {
  final String beneficiary;
  final String scheme;
  final DateTime expiresAt;
  const PaymentNextActionAuthorize({
    required this.beneficiary,
    required this.scheme,
    required this.expiresAt,
  });
  factory PaymentNextActionAuthorize.fromJson(Map<String, Object?> json) =>
      PaymentNextActionAuthorize(
        beneficiary: json["beneficiary"] as String,
        scheme: json["scheme"] as String,
        expiresAt: _decodeDateTime(json["expires_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "beneficiary": _encodeValue(beneficiary),
        "scheme": _encodeValue(scheme),
        "expires_at": _encodeValue(expiresAt),
      };
}
