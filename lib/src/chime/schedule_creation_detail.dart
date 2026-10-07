part of '../../chime.dart';

/// The schedule details returned after scheduling Chimes.
///
/// Exposes [createdAt], [customerIds], [email], and [executedAt], among other
/// contract fields.
final class ScheduleCreationDetail implements InttegroValue {
  final DateTime createdAt;
  final List<String>? customerIds;
  final EmailMessage? email;
  final DateTime? executedAt;
  final String fullMessage;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final List<String>? recipients;
  final DateTime sendAfter;
  final String senderId;
  const ScheduleCreationDetail({
    required this.createdAt,
    this.customerIds,
    this.email,
    this.executedAt,
    required this.fullMessage,
    required this.id,
    this.idempotencyKey,
    this.purpose,
    this.recipients,
    required this.sendAfter,
    required this.senderId,
  });
  factory ScheduleCreationDetail.fromJson(
    Map<String, Object?> json,
  ) =>
      ScheduleCreationDetail(
        createdAt: decodeDateTime(json["created_at"]),
        customerIds: json["customer_ids"] == null
            ? null
            : (json["customer_ids"] as List)
                .map((item) => item as String)
                .toList(),
        email: json["email"] == null
            ? null
            : EmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        executedAt: json["executed_at"] == null
            ? null
            : decodeDateTime(json["executed_at"]),
        fullMessage: json["full_message"] as String,
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients: json["recipients"] == null
            ? null
            : (json["recipients"] as List)
                .map((item) => item as String)
                .toList(),
        sendAfter: decodeDateTime(json["send_after"]),
        senderId: json["sender_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": encodeValue(createdAt),
        if (customerIds != null) "customer_ids": encodeValue(customerIds),
        if (email != null) "email": encodeValue(email),
        if (executedAt != null) "executed_at": encodeValue(executedAt),
        "full_message": encodeValue(fullMessage),
        "id": encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": encodeValue(idempotencyKey),
        if (purpose != null) "purpose": encodeValue(purpose),
        if (recipients != null) "recipients": encodeValue(recipients),
        "send_after": encodeValue(sendAfter),
        "sender_id": encodeValue(senderId),
      };
}
