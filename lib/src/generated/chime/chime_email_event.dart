part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ChimeEmailEvent implements _InttegroValue {
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
  const ChimeEmailEvent({
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
  factory ChimeEmailEvent.fromJson(Map<String, Object?> json) =>
      ChimeEmailEvent(
        bounceSubType: json["bounce_sub_type"] == null
            ? null
            : json["bounce_sub_type"] as String,
        bounceType:
            json["bounce_type"] == null ? null : json["bounce_type"] as String,
        complaintSubType: json["complaint_sub_type"] == null
            ? null
            : json["complaint_sub_type"] as String,
        id: json["id"] as String,
        occurredAt: _decodeDateTime(json["occurred_at"]),
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
          "bounce_sub_type": _encodeValue(bounceSubType),
        if (bounceType != null) "bounce_type": _encodeValue(bounceType),
        if (complaintSubType != null)
          "complaint_sub_type": _encodeValue(complaintSubType),
        "id": _encodeValue(id),
        "occurred_at": _encodeValue(occurredAt),
        "provider": _encodeValue(provider),
        "provider_message_id": _encodeValue(providerMessageId),
        if (reason != null) "reason": _encodeValue(reason),
        if (reasonCode != null) "reason_code": _encodeValue(reasonCode),
        if (recipient != null) "recipient": _encodeValue(recipient),
        if (source != null) "source": _encodeValue(source),
        if (suppressRecipient != null)
          "suppress_recipient": _encodeValue(suppressRecipient),
        if (temporary != null) "temporary": _encodeValue(temporary),
        "type": _encodeValue(type),
      };
}
