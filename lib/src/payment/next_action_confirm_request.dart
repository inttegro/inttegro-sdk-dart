part of '../../payment.dart';

/// The confirmation token request sent for a payment.
final class NextActionConfirmRequest implements InttegroValue {
  final String id;
  final String recipient;
  final ConfirmationChannel sentVia;
  final int tokenSize;
  final String senderId;
  final String? status;
  const NextActionConfirmRequest({
    required this.id,
    required this.recipient,
    required this.sentVia,
    required this.tokenSize,
    required this.senderId,
    this.status,
  });
  factory NextActionConfirmRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      NextActionConfirmRequest(
        id: json["id"] as String,
        recipient: json["recipient"] as String,
        sentVia: ConfirmationChannel.fromJson(json["sent_via"]),
        tokenSize: (json["token_size"] as num).toInt(),
        senderId: json["sender_id"] as String,
        status: json["status"] as String?,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "recipient": encodeValue(recipient),
        "sent_via": encodeValue(sentVia),
        "token_size": encodeValue(tokenSize),
        "sender_id": encodeValue(senderId),
        if (status != null) "status": encodeValue(status),
      };
}
