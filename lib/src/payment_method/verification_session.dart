part of '../../payment_method.dart';

/// An active payment-method verification challenge and its expiry.
///
/// Exposes [paymentMethodId], [status], [tokenSentAt], and [expiresAt], among
/// other contract fields.
final class VerificationSession implements InttegroValue {
  final String paymentMethodId;
  final String status;
  final DateTime? tokenSentAt;
  final DateTime? expiresAt;
  final VerificationDelivery? delivery;
  const VerificationSession({
    required this.paymentMethodId,
    required this.status,
    this.tokenSentAt,
    this.expiresAt,
    this.delivery,
  });
  factory VerificationSession.fromJson(
    Map<String, Object?> json,
  ) =>
      VerificationSession(
        paymentMethodId: json["payment_method_id"] as String,
        status: json["status"] as String,
        tokenSentAt: json["token_sent_at"] == null
            ? null
            : decodeDateTime(json["token_sent_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : decodeDateTime(json["expires_at"]),
        delivery: json["delivery"] == null
            ? null
            : VerificationDelivery.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": encodeValue(paymentMethodId),
        "status": encodeValue(status),
        if (tokenSentAt != null) "token_sent_at": encodeValue(tokenSentAt),
        if (expiresAt != null) "expires_at": encodeValue(expiresAt),
        if (delivery != null) "delivery": encodeValue(delivery),
      };
}
