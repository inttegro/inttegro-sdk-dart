part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodVerificationSession implements _InttegroValue {
  final String paymentMethodId;
  final String status;
  final DateTime? tokenSentAt;
  final DateTime? expiresAt;
  final PaymentMethodVerificationDelivery? delivery;
  const PaymentMethodVerificationSession({
    required this.paymentMethodId,
    required this.status,
    this.tokenSentAt,
    this.expiresAt,
    this.delivery,
  });
  factory PaymentMethodVerificationSession.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodVerificationSession(
        paymentMethodId: json["payment_method_id"] as String,
        status: json["status"] as String,
        tokenSentAt: json["token_sent_at"] == null
            ? null
            : _decodeDateTime(json["token_sent_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        delivery: json["delivery"] == null
            ? null
            : PaymentMethodVerificationDelivery.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
        "status": _encodeValue(status),
        if (tokenSentAt != null) "token_sent_at": _encodeValue(tokenSentAt),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        if (delivery != null) "delivery": _encodeValue(delivery),
      };
}
