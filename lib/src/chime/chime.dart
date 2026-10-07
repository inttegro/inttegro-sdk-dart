part of '../../chime.dart';

/// A message sent to one recipient through the Chime API.
///
/// [transmission] describes provider delivery when that information is
/// available; [fullMessage] preserves the rendered content that was sent.
final class Chime implements InttegroValue {
  final DateTime createdAt;
  final core.CustomData? customData;
  final String? customerId;
  final EmailMessage? email;
  final String fullMessage;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final Recipient recipient;
  final String senderId;
  final Transmission? transmission;
  const Chime({
    required this.createdAt,
    this.customData,
    this.customerId,
    this.email,
    required this.fullMessage,
    required this.id,
    this.idempotencyKey,
    this.purpose,
    required this.recipient,
    required this.senderId,
    this.transmission,
  });
  factory Chime.fromJson(Map<String, Object?> json) => Chime(
        createdAt: decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        customerId:
            json["customer_id"] == null ? null : json["customer_id"] as String,
        email: json["email"] == null
            ? null
            : EmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        fullMessage: json["full_message"] as String,
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipient: Recipient.fromJson(
          (json["recipient"] as Map).cast<String, Object?>(),
        ),
        senderId: json["sender_id"] as String,
        transmission: json["transmission"] == null
            ? null
            : Transmission.fromJson(
                (json["transmission"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": encodeValue(createdAt),
        if (customData != null) "custom_data": encodeValue(customData),
        if (customerId != null) "customer_id": encodeValue(customerId),
        if (email != null) "email": encodeValue(email),
        "full_message": encodeValue(fullMessage),
        "id": encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": encodeValue(idempotencyKey),
        if (purpose != null) "purpose": encodeValue(purpose),
        "recipient": encodeValue(recipient),
        "sender_id": encodeValue(senderId),
        if (transmission != null) "transmission": encodeValue(transmission),
      };
}
