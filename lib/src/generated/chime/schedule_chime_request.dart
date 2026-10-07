part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ScheduleChimeRequest implements _InttegroValue {
  final ScheduleChimeRequestRequestMeta? requestMeta;
  final String? fullMessage;
  final ChimeEmailMessageInput? email;
  final MessageTemplateReferenceInput? messageTemplate;
  final String? senderId;
  final String? purpose;
  final List<Object?> recipients;
  final DateTime sendAfter;
  const ScheduleChimeRequest({
    this.requestMeta,
    this.fullMessage,
    this.email,
    this.messageTemplate,
    this.senderId,
    this.purpose,
    required this.recipients,
    required this.sendAfter,
  });
  factory ScheduleChimeRequest.fromJson(Map<String, Object?> json) =>
      ScheduleChimeRequest(
        requestMeta: json["request_meta"] == null
            ? null
            : ScheduleChimeRequestRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        fullMessage: json["full_message"] == null
            ? null
            : json["full_message"] as String,
        email: json["email"] == null
            ? null
            : ChimeEmailMessageInput.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        messageTemplate: json["message_template"] == null
            ? null
            : MessageTemplateReferenceInput.fromJson(
                (json["message_template"] as Map).cast<String, Object?>(),
              ),
        senderId:
            json["sender_id"] == null ? null : json["sender_id"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients: (json["recipients"] as List).map((item) => item).toList(),
        sendAfter: _decodeDateTime(json["send_after"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        if (fullMessage != null) "full_message": _encodeValue(fullMessage),
        if (email != null) "email": _encodeValue(email),
        if (messageTemplate != null)
          "message_template": _encodeValue(messageTemplate),
        if (senderId != null) "sender_id": _encodeValue(senderId),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "recipients": _encodeValue(recipients),
        "send_after": _encodeValue(sendAfter),
      };
}
