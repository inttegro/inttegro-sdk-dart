part of '../../chime.dart';

/// A provider event describing email delivery, bounce, or complaint activity.
///
/// Exposes [bounceSubType], [bounceType], [complaintSubType], and [id], among
/// other contract fields.
final class EmailEvent implements InttegroValue {
  final String? bounceSubType;
  final String? bounceType;
  final String? complaintSubType;
  final String id;
  final DateTime occurredAt;
  final String provider;
  final String providerMessageId;
  final String? reason;
  final String? reasonCode;
  final String? recipient;
  final String? source;
  final bool? suppressRecipient;
  final bool? temporary;
  final String type;
  const EmailEvent({
    this.bounceSubType,
    this.bounceType,
    this.complaintSubType,
    required this.id,
    required this.occurredAt,
    required this.provider,
    required this.providerMessageId,
    this.reason,
    this.reasonCode,
    this.recipient,
    this.source,
    this.suppressRecipient,
    this.temporary,
    required this.type,
  });
  factory EmailEvent.fromJson(Map<String, Object?> json) => EmailEvent(
        bounceSubType: json["bounce_sub_type"] == null
            ? null
            : json["bounce_sub_type"] as String,
        bounceType:
            json["bounce_type"] == null ? null : json["bounce_type"] as String,
        complaintSubType: json["complaint_sub_type"] == null
            ? null
            : json["complaint_sub_type"] as String,
        id: json["id"] as String,
        occurredAt: decodeDateTime(json["occurred_at"]),
        provider: json["provider"] as String,
        providerMessageId: json["provider_message_id"] as String,
        reason: json["reason"] == null ? null : json["reason"] as String,
        reasonCode:
            json["reason_code"] == null ? null : json["reason_code"] as String,
        recipient:
            json["recipient"] == null ? null : json["recipient"] as String,
        source: json["source"] == null ? null : json["source"] as String,
        suppressRecipient: json["suppress_recipient"] == null
            ? null
            : json["suppress_recipient"] as bool,
        temporary: json["temporary"] == null ? null : json["temporary"] as bool,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (bounceSubType != null)
          "bounce_sub_type": encodeValue(bounceSubType),
        if (bounceType != null) "bounce_type": encodeValue(bounceType),
        if (complaintSubType != null)
          "complaint_sub_type": encodeValue(complaintSubType),
        "id": encodeValue(id),
        "occurred_at": encodeValue(occurredAt),
        "provider": encodeValue(provider),
        "provider_message_id": encodeValue(providerMessageId),
        if (reason != null) "reason": encodeValue(reason),
        if (reasonCode != null) "reason_code": encodeValue(reasonCode),
        if (recipient != null) "recipient": encodeValue(recipient),
        if (source != null) "source": encodeValue(source),
        if (suppressRecipient != null)
          "suppress_recipient": encodeValue(suppressRecipient),
        if (temporary != null) "temporary": encodeValue(temporary),
        "type": encodeValue(type),
      };
}
