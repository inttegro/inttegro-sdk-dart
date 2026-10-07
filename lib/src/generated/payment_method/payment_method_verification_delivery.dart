part of '../../../inttegro.dart';

/// Describes delivery of a payment-method verification token.
final class PaymentMethodVerificationDelivery implements _InttegroValue {
  final String? recipient;
  final String? channel;
  final String? senderId;
  const PaymentMethodVerificationDelivery({
    this.recipient,
    this.channel,
    this.senderId,
  });
  factory PaymentMethodVerificationDelivery.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodVerificationDelivery(
        recipient: json["recipient"] as String?,
        channel: json["channel"] as String?,
        senderId: json["sender_id"] as String?,
      );
  @override
  Map<String, Object?> toJson() => {
        if (recipient != null) "recipient": _encodeValue(recipient),
        if (channel != null) "channel": _encodeValue(channel),
        if (senderId != null) "sender_id": _encodeValue(senderId),
      };
}
