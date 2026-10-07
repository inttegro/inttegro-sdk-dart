part of '../../broadcast.dart';

/// A broadcast and its recipients, delivery content, timing, and errors.
final class Detail implements InttegroValue {
  final List<String>? chimeIds;
  final String content;
  final DateTime createdAt;
  final List<String>? customerIds;
  final inttegro_chime.EmailMessage? email;
  final List<Error>? errors;
  final DateTime? executedAt;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final List<String> recipients;
  final DateTime sendAfter;
  final String senderId;
  const Detail({
    this.chimeIds,
    required this.content,
    required this.createdAt,
    this.customerIds,
    this.email,
    this.errors,
    this.executedAt,
    required this.id,
    this.idempotencyKey,
    this.purpose,
    required this.recipients,
    required this.sendAfter,
    required this.senderId,
  });
  factory Detail.fromJson(
    Map<String, Object?> json,
  ) =>
      Detail(
        chimeIds: json["chime_ids"] == null
            ? null
            : (json["chime_ids"] as List)
                .map((item) => item as String)
                .toList(),
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
        errors: json["errors"] == null
            ? null
            : (json["errors"] as List)
                .map(
                  (item) => Error.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        executedAt: json["executed_at"] == null
            ? null
            : decodeDateTime(json["executed_at"]),
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
        if (chimeIds != null) "chime_ids": encodeValue(chimeIds),
        "content": encodeValue(content),
        "created_at": encodeValue(createdAt),
        if (customerIds != null) "customer_ids": encodeValue(customerIds),
        if (email != null) "email": encodeValue(email),
        if (errors != null) "errors": encodeValue(errors),
        if (executedAt != null) "executed_at": encodeValue(executedAt),
        "id": encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": encodeValue(idempotencyKey),
        if (purpose != null) "purpose": encodeValue(purpose),
        "recipients": encodeValue(recipients),
        "send_after": encodeValue(sendAfter),
        "sender_id": encodeValue(senderId),
      };
}
