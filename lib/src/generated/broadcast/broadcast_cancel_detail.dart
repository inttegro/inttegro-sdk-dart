part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class BroadcastCancelDetail implements _InttegroValue {
  final List<String>? chimeIds;
  final String content;
  final DateTime createdAt;
  final List<String>? customerIds;
  final ChimeEmailMessage? email;
  final List<BroadcastError>? errors;
  final DateTime? executedAt;
  final String id;
  final String? idempotencyKey;
  final String? purpose;
  final List<String> recipients;
  final DateTime sendAfter;
  final String senderId;
  final DateTime? canceledAt;
  const BroadcastCancelDetail({
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
  factory BroadcastCancelDetail.fromJson(
    Map<String, Object?> json,
  ) =>
      BroadcastCancelDetail(
        chimeIds: json["chime_ids"] == null
            ? null
            : (json["chime_ids"] as List)
                .map((item) => item as String)
                .toList(),
        content: json["content"] as String,
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
        errors: json["errors"] == null
            ? null
            : (json["errors"] as List)
                .map(
                  (item) => BroadcastError.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        executedAt: json["executed_at"] == null
            ? null
            : _decodeDateTime(json["executed_at"]),
        id: json["id"] as String,
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients:
            (json["recipients"] as List).map((item) => item as String).toList(),
        sendAfter: _decodeDateTime(json["send_after"]),
        senderId: json["sender_id"] as String,
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (chimeIds != null) "chime_ids": _encodeValue(chimeIds),
        "content": _encodeValue(content),
        "created_at": _encodeValue(createdAt),
        if (customerIds != null) "customer_ids": _encodeValue(customerIds),
        if (email != null) "email": _encodeValue(email),
        if (errors != null) "errors": _encodeValue(errors),
        if (executedAt != null) "executed_at": _encodeValue(executedAt),
        "id": _encodeValue(id),
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "recipients": _encodeValue(recipients),
        "send_after": _encodeValue(sendAfter),
        "sender_id": _encodeValue(senderId),
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
      };
}
