part of '../../broadcast.dart';

/// The broadcast details returned when broadcast delivery is created.
///
/// Exposes [content], [createdAt], [customerIds], and [email], among other
/// contract fields.
final class CreationDetail implements InttegroValue {
  final String content;
  final DateTime createdAt;
  final List<String>? customerIds;
  final inttegro_chime.EmailMessage? email;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final List<String> recipients;
  final DateTime sendAfter;
  final String senderId;
  const CreationDetail({
    required this.content,
    required this.createdAt,
    this.customerIds,
    this.email,
    required this.id,
    this.idempotencyKey,
    this.purpose,
    required this.recipients,
    required this.sendAfter,
    required this.senderId,
  });
  factory CreationDetail.fromJson(Map<String, Object?> json) => CreationDetail(
        content: json["content"] as String,
        createdAt: decodeDateTime(json["created_at"]),
        customerIds: json["customer_ids"] == null
            ? null
            : (json["customer_ids"] as List)
                .map((item) => item as String)
                .toList(),
        email: json["email"] == null
            ? null
            : inttegro_chime.EmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients:
            (json["recipients"] as List).map((item) => item as String).toList(),
        sendAfter: decodeDateTime(json["send_after"]),
        senderId: json["sender_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "content": encodeValue(content),
        "created_at": encodeValue(createdAt),
        if (customerIds != null) "customer_ids": encodeValue(customerIds),
        if (email != null) "email": encodeValue(email),
        "id": encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": encodeValue(idempotencyKey),
        if (purpose != null) "purpose": encodeValue(purpose),
        "recipients": encodeValue(recipients),
        "send_after": encodeValue(sendAfter),
        "sender_id": encodeValue(senderId),
      };
}
