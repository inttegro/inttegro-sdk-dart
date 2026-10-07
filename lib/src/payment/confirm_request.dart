part of '../../payment.dart';

/// Parameters for submitting a payment confirmation token.
final class ConfirmRequest implements InttegroValue {
  final String orderId;
  final String paymentId;
  final String confirmationId;
  final String token;
  const ConfirmRequest({
    required this.orderId,
    required this.paymentId,
    required this.confirmationId,
    required this.token,
  });
  factory ConfirmRequest.fromJson(Map<String, Object?> json) => ConfirmRequest(
        orderId: json["order_id"] as String,
        paymentId: json["payment_id"] as String,
        confirmationId: json["confirmation_id"] as String,
        token: json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "order_id": encodeValue(orderId),
        "payment_id": encodeValue(paymentId),
        "confirmation_id": encodeValue(confirmationId),
        "token": encodeValue(token),
      };
}
