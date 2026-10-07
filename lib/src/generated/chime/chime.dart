part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class Chime implements _InttegroValue {
  final DateTime createdAt;
  final CustomData? customData;
  final String? customerId;
  final ChimeEmailMessage? email;
  final String fullMessage;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final ChimeRecipient recipient;
  final String senderId;
  final ChimeTransmission? transmission;
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
        createdAt: _decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        customerId:
            json["customer_id"] == null ? null : json["customer_id"] as String,
        email: json["email"] == null
            ? null
            : ChimeEmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        fullMessage: json["full_message"] as String,
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipient: ChimeRecipient.fromJson(
          (json["recipient"] as Map).cast<String, Object?>(),
        ),
        senderId: json["sender_id"] as String,
        transmission: json["transmission"] == null
            ? null
            : ChimeTransmission.fromJson(
                (json["transmission"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": _encodeValue(createdAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (customerId != null) "customer_id": _encodeValue(customerId),
        if (email != null) "email": _encodeValue(email),
        "full_message": _encodeValue(fullMessage),
        "id": _encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "recipient": _encodeValue(recipient),
        "sender_id": _encodeValue(senderId),
        if (transmission != null) "transmission": _encodeValue(transmission),
      };
}
