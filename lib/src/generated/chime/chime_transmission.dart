part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ChimeTransmission implements _InttegroValue {
  final String address;
  final DateTime createdAt;
  final DateTime? deliveredAt;
  final List<ChimeEmailEvent>? emailEvents;
  final String? emailFailureCode;
  final String? emailFailureReason;
  final String? emailStatus;
  final String? error;
  final DateTime? failedAt;
  final String gateway;
  final String? gatewayMessageId;
  final String id;
  final DateTime initializedAt;
  final DateTime? lastEmailEventAt;
  final ChimeTransport mechanism;
  final DateTime? sentAt;
  final ChimeTransport? sentVia;
  final String status;
  final DateTime? suppressedAt;
  final String? suppressionReason;
  const ChimeTransmission({
    required this.address,
    required this.createdAt,
    this.deliveredAt,
    this.emailEvents,
    this.emailFailureCode,
    this.emailFailureReason,
    this.emailStatus,
    this.error,
    this.failedAt,
    required this.gateway,
    this.gatewayMessageId,
    required this.id,
    required this.initializedAt,
    this.lastEmailEventAt,
    required this.mechanism,
    this.sentAt,
    this.sentVia,
    required this.status,
    this.suppressedAt,
    this.suppressionReason,
  });
  factory ChimeTransmission.fromJson(Map<String, Object?> json) =>
      ChimeTransmission(
        address: json["address"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        deliveredAt: json["delivered_at"] == null
            ? null
            : _decodeDateTime(json["delivered_at"]),
        emailEvents: json["email_events"] == null
            ? null
            : (json["email_events"] as List)
                .map(
                  (item) => ChimeEmailEvent.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        emailFailureCode: json["email_failure_code"] == null
            ? null
            : json["email_failure_code"] as String,
        emailFailureReason: json["email_failure_reason"] == null
            ? null
            : json["email_failure_reason"] as String,
        emailStatus: json["email_status"] == null
            ? null
            : json["email_status"] as String,
        error: json["error"] == null ? null : json["error"] as String,
        failedAt: json["failed_at"] == null
            ? null
            : _decodeDateTime(json["failed_at"]),
        gateway: json["gateway"] as String,
        gatewayMessageId: json["gateway_message_id"] == null
            ? null
            : json["gateway_message_id"] as String,
        id: json["id"] as String,
        initializedAt: _decodeDateTime(json["initialized_at"]),
        lastEmailEventAt: json["last_email_event_at"] == null
            ? null
            : _decodeDateTime(json["last_email_event_at"]),
        mechanism: ChimeTransport.fromJson(json["mechanism"]),
        sentAt:
            json["sent_at"] == null ? null : _decodeDateTime(json["sent_at"]),
        sentVia: json["sent_via"] == null
            ? null
            : ChimeTransport.fromJson(json["sent_via"]),
        status: json["status"] as String,
        suppressedAt: json["suppressed_at"] == null
            ? null
            : _decodeDateTime(json["suppressed_at"]),
        suppressionReason: json["suppression_reason"] == null
            ? null
            : json["suppression_reason"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": _encodeValue(address),
        "created_at": _encodeValue(createdAt),
        if (deliveredAt != null) "delivered_at": _encodeValue(deliveredAt),
        if (emailEvents != null) "email_events": _encodeValue(emailEvents),
        if (emailFailureCode != null)
          "email_failure_code": _encodeValue(emailFailureCode),
        if (emailFailureReason != null)
          "email_failure_reason": _encodeValue(emailFailureReason),
        if (emailStatus != null) "email_status": _encodeValue(emailStatus),
        if (error != null) "error": _encodeValue(error),
        if (failedAt != null) "failed_at": _encodeValue(failedAt),
        "gateway": _encodeValue(gateway),
        if (gatewayMessageId != null)
          "gateway_message_id": _encodeValue(gatewayMessageId),
        "id": _encodeValue(id),
        "initialized_at": _encodeValue(initializedAt),
        if (lastEmailEventAt != null)
          "last_email_event_at": _encodeValue(lastEmailEventAt),
        "mechanism": _encodeValue(mechanism),
        if (sentAt != null) "sent_at": _encodeValue(sentAt),
        if (sentVia != null) "sent_via": _encodeValue(sentVia),
        "status": _encodeValue(status),
        if (suppressedAt != null) "suppressed_at": _encodeValue(suppressedAt),
        if (suppressionReason != null)
          "suppression_reason": _encodeValue(suppressionReason),
      };
}
