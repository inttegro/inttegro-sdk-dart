part of '../../chime.dart';

/// Provider delivery state and event history for a Chime message.
///
/// Exposes [address], [createdAt], [deliveredAt], and [emailEvents], among
/// other contract fields.
final class Transmission implements InttegroValue {
  final String address;
  final DateTime createdAt;
  final DateTime? deliveredAt;
  final List<EmailEvent>? emailEvents;
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
  final Transport mechanism;
  final DateTime? sentAt;
  final Transport? sentVia;
  final String status;
  final DateTime? suppressedAt;
  final String? suppressionReason;
  const Transmission({
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
  factory Transmission.fromJson(Map<String, Object?> json) => Transmission(
        address: json["address"] as String,
        createdAt: decodeDateTime(json["created_at"]),
        deliveredAt: json["delivered_at"] == null
            ? null
            : decodeDateTime(json["delivered_at"]),
        emailEvents: json["email_events"] == null
            ? null
            : (json["email_events"] as List)
                .map(
                  (item) => EmailEvent.fromJson(
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
            : decodeDateTime(json["failed_at"]),
        gateway: json["gateway"] as String,
        gatewayMessageId: json["gateway_message_id"] == null
            ? null
            : json["gateway_message_id"] as String,
        id: json["id"] as String,
        initializedAt: decodeDateTime(json["initialized_at"]),
        lastEmailEventAt: json["last_email_event_at"] == null
            ? null
            : decodeDateTime(json["last_email_event_at"]),
        mechanism: Transport.fromJson(json["mechanism"]),
        sentAt:
            json["sent_at"] == null ? null : decodeDateTime(json["sent_at"]),
        sentVia: json["sent_via"] == null
            ? null
            : Transport.fromJson(json["sent_via"]),
        status: json["status"] as String,
        suppressedAt: json["suppressed_at"] == null
            ? null
            : decodeDateTime(json["suppressed_at"]),
        suppressionReason: json["suppression_reason"] == null
            ? null
            : json["suppression_reason"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": encodeValue(address),
        "created_at": encodeValue(createdAt),
        if (deliveredAt != null) "delivered_at": encodeValue(deliveredAt),
        if (emailEvents != null) "email_events": encodeValue(emailEvents),
        if (emailFailureCode != null)
          "email_failure_code": encodeValue(emailFailureCode),
        if (emailFailureReason != null)
          "email_failure_reason": encodeValue(emailFailureReason),
        if (emailStatus != null) "email_status": encodeValue(emailStatus),
        if (error != null) "error": encodeValue(error),
        if (failedAt != null) "failed_at": encodeValue(failedAt),
        "gateway": encodeValue(gateway),
        if (gatewayMessageId != null)
          "gateway_message_id": encodeValue(gatewayMessageId),
        "id": encodeValue(id),
        "initialized_at": encodeValue(initializedAt),
        if (lastEmailEventAt != null)
          "last_email_event_at": encodeValue(lastEmailEventAt),
        "mechanism": encodeValue(mechanism),
        if (sentAt != null) "sent_at": encodeValue(sentAt),
        if (sentVia != null) "sent_via": encodeValue(sentVia),
        "status": encodeValue(status),
        if (suppressedAt != null) "suppressed_at": encodeValue(suppressedAt),
        if (suppressionReason != null)
          "suppression_reason": encodeValue(suppressionReason),
      };
}
