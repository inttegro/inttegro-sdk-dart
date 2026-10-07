part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class SendChimeRequest implements _InttegroValue {
  final String? fullMessage;
  final ChimeEmailMessageInput? email;
  final MessageTemplateReferenceInput? messageTemplate;
  final String? senderId;
  final String? purpose;
  final CustomData? customData;
  final SendChimeRequestRequestMeta? requestMeta;
  final SendChimeRequestRecipient recipient;
  const SendChimeRequest({
    this.fullMessage,
    this.email,
    this.messageTemplate,
    this.senderId,
    this.purpose,
    this.customData,
    this.requestMeta,
    required this.recipient,
  });
  factory SendChimeRequest.fromJson(Map<String, Object?> json) =>
      SendChimeRequest(
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
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        requestMeta: json["request_meta"] == null
            ? null
            : SendChimeRequestRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        recipient: SendChimeRequestRecipient.fromJson(json["recipient"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (fullMessage != null) "full_message": _encodeValue(fullMessage),
        if (email != null) "email": _encodeValue(email),
        if (messageTemplate != null)
          "message_template": _encodeValue(messageTemplate),
        if (senderId != null) "sender_id": _encodeValue(senderId),
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        "recipient": _encodeValue(recipient),
      };
}
