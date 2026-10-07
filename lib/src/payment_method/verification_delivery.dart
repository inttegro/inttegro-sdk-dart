part of '../../payment_method.dart';

/// Describes delivery of a payment-method verification token.
final class VerificationDelivery implements InttegroValue {
  final String? recipient;
  final String? channel;
  final String? senderId;
  const VerificationDelivery({
    this.recipient,
    this.channel,
    this.senderId,
  });
  factory VerificationDelivery.fromJson(
    Map<String, Object?> json,
  ) =>
      VerificationDelivery(
        recipient: json["recipient"] as String?,
        channel: json["channel"] as String?,
        senderId: json["sender_id"] as String?,
      );
  @override
  Map<String, Object?> toJson() => {
        if (recipient != null) "recipient": encodeValue(recipient),
        if (channel != null) "channel": encodeValue(channel),
        if (senderId != null) "sender_id": encodeValue(senderId),
      };
}
