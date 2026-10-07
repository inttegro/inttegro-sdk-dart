part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentNextActionConfirmPaymentRequest implements _InttegroValue {
  final String id;
  final String recipient;
  final PaymentConfirmationChannel sentVia;
  final int tokenSize;
  final String senderId;
  final String? status;
  const PaymentNextActionConfirmPaymentRequest({
    required this.id,
    required this.recipient,
    required this.sentVia,
    required this.tokenSize,
    required this.senderId,
    this.status,
  });
  factory PaymentNextActionConfirmPaymentRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentNextActionConfirmPaymentRequest(
        id: json["id"] as String,
        recipient: json["recipient"] as String,
        sentVia: PaymentConfirmationChannel.fromJson(json["sent_via"]),
        tokenSize: (json["token_size"] as num).toInt(),
        senderId: json["sender_id"] as String,
        status: json["status"] as String?,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "recipient": _encodeValue(recipient),
        "sent_via": _encodeValue(sentVia),
        "token_size": _encodeValue(tokenSize),
        "sender_id": _encodeValue(senderId),
        if (status != null) "status": _encodeValue(status),
      };
}
