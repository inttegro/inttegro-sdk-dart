part of '../../chime.dart';

/// Parameters for scheduling a Chime.
///
/// Carries [requestMeta], [fullMessage], [email], and [messageTemplate], among
/// other supported fields.
final class ScheduleRequest implements InttegroValue {
  final ScheduleRequestRequestMeta? requestMeta;
  final String? fullMessage;
  final EmailMessageInput? email;
  final inttegro_message_template.ReferenceInput? messageTemplate;
  final String? senderId;
  final String? purpose;
  final List<Object?> recipients;
  final DateTime sendAfter;
  const ScheduleRequest({
    this.requestMeta,
    this.fullMessage,
    this.email,
    this.messageTemplate,
    this.senderId,
    this.purpose,
    required this.recipients,
    required this.sendAfter,
  });
  factory ScheduleRequest.fromJson(Map<String, Object?> json) =>
      ScheduleRequest(
        requestMeta: json["request_meta"] == null
            ? null
            : ScheduleRequestRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        fullMessage: json["full_message"] == null
            ? null
            : json["full_message"] as String,
        email: json["email"] == null
            ? null
            : EmailMessageInput.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        messageTemplate: json["message_template"] == null
            ? null
            : inttegro_message_template.ReferenceInput.fromJson(
                (json["message_template"] as Map).cast<String, Object?>(),
              ),
        senderId:
            json["sender_id"] == null ? null : json["sender_id"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        recipients: (json["recipients"] as List).map((item) => item).toList(),
        sendAfter: decodeDateTime(json["send_after"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (requestMeta != null) "request_meta": encodeValue(requestMeta),
        if (fullMessage != null) "full_message": encodeValue(fullMessage),
        if (email != null) "email": encodeValue(email),
        if (messageTemplate != null)
          "message_template": encodeValue(messageTemplate),
        if (senderId != null) "sender_id": encodeValue(senderId),
        if (purpose != null) "purpose": encodeValue(purpose),
        "recipients": encodeValue(recipients),
        "send_after": encodeValue(sendAfter),
      };
}
