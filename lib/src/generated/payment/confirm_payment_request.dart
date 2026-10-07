part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ConfirmPaymentRequest implements _InttegroValue {
  final String orderId;
  final String paymentId;
  final String confirmationId;
  final String token;
  const ConfirmPaymentRequest({
    required this.orderId,
    required this.paymentId,
    required this.confirmationId,
    required this.token,
  });
  factory ConfirmPaymentRequest.fromJson(Map<String, Object?> json) =>
      ConfirmPaymentRequest(
        orderId: json["order_id"] as String,
        paymentId: json["payment_id"] as String,
        confirmationId: json["confirmation_id"] as String,
        token: json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "order_id": _encodeValue(orderId),
        "payment_id": _encodeValue(paymentId),
        "confirmation_id": _encodeValue(confirmationId),
        "token": _encodeValue(token),
      };
}
