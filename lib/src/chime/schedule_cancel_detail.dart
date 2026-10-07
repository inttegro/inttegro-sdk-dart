part of '../../chime.dart';

/// A canceled Chime schedule and any messages it created.
///
/// Exposes [chimeIds], [content], [createdAt], and [customerIds], among other
/// contract fields.
final class ScheduleCancelDetail implements InttegroValue {
  final List<String>? chimeIds;
  final String content;
  final DateTime createdAt;
  final List<String>? customerIds;
  final EmailMessage? email;
  final List<ScheduleError>? errors;
  final DateTime? executedAt;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final List<String> recipients;
  final DateTime sendAfter;
  final String senderId;
  final DateTime? canceledAt;
  const ScheduleCancelDetail({
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
    this.canceledAt,
  });
  factory ScheduleCancelDetail.fromJson(
    Map<String, Object?> json,
  ) =>
      ScheduleCancelDetail(
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
            : EmailMessage.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        errors: json["errors"] == null
            ? null
            : (json["errors"] as List)
                .map(
                  (item) => ScheduleError.fromJson(
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
        canceledAt: json["canceled_at"] == null
            ? null
            : decodeDateTime(json["canceled_at"]),
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
        if (canceledAt != null) "canceled_at": encodeValue(canceledAt),
      };
}
