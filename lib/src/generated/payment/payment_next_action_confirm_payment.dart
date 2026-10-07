part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentNextActionConfirmPayment implements _InttegroValue {
  final DateTime expiresAt;
  final String scheme;
  final PaymentNextActionConfirmPaymentRequest? request;
  final PaymentNextActionConfirmPaymentAttempt? attempt;
  final bool confirmed;
  final String status;
  const PaymentNextActionConfirmPayment({
    required this.expiresAt,
    required this.scheme,
    this.request,
    this.attempt,
    required this.confirmed,
    required this.status,
  });
  factory PaymentNextActionConfirmPayment.fromJson(Map<String, Object?> json) =>
      PaymentNextActionConfirmPayment(
        expiresAt: _decodeDateTime(json["expires_at"]),
        scheme: json["scheme"] as String,
        request: json["request"] == null
            ? null
            : PaymentNextActionConfirmPaymentRequest.fromJson(
                (json["request"] as Map).cast<String, Object?>(),
              ),
        attempt: json["attempt"] == null
            ? null
            : PaymentNextActionConfirmPaymentAttempt.fromJson(
                (json["attempt"] as Map).cast<String, Object?>(),
              ),
        confirmed: json["confirmed"] as bool,
        status: json["status"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "expires_at": _encodeValue(expiresAt),
        "scheme": _encodeValue(scheme),
        if (request != null) "request": _encodeValue(request),
        if (attempt != null) "attempt": _encodeValue(attempt),
        "confirmed": _encodeValue(confirmed),
        "status": _encodeValue(status),
      };
}
