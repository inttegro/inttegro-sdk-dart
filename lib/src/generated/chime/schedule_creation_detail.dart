part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ScheduleCreationDetail implements _InttegroValue {
  final DateTime createdAt;
  final List<String>? customerIds;
  final ChimeEmailMessage? email;
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
        createdAt: _decodeDateTime(json["created_at"]),
        customerIds: json["customer_ids"] == null
            ? null
            : (json["customer_ids"] as List)
                .map((item) => item as String)
                .toList(),
        email: json["email"] == null
            ? null
            : ChimeEmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        executedAt: json["executed_at"] == null
            ? null
            : _decodeDateTime(json["executed_at"]),
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
        sendAfter: _decodeDateTime(json["send_after"]),
        senderId: json["sender_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": _encodeValue(createdAt),
        if (customerIds != null) "customer_ids": _encodeValue(customerIds),
        if (email != null) "email": _encodeValue(email),
        if (executedAt != null) "executed_at": _encodeValue(executedAt),
        "full_message": _encodeValue(fullMessage),
        "id": _encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (recipients != null) "recipients": _encodeValue(recipients),
        "send_after": _encodeValue(sendAfter),
        "sender_id": _encodeValue(senderId),
      };
}
