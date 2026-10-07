part of '../../chime.dart';

/// Parameters for sending a Chime to one recipient.
final class SendRequest implements InttegroValue {
  final String? fullMessage;
  final EmailMessageInput? email;
  final inttegro_message_template.ReferenceInput? messageTemplate;
  final String? senderId;
  final String? purpose;
  final core.CustomData? customData;
  final SendRequestRequestMeta? requestMeta;
  final SendRequestRecipient recipient;
  const SendRequest({
    this.fullMessage,
    this.email,
    this.messageTemplate,
    this.senderId,
    this.purpose,
    this.customData,
    this.requestMeta,
    required this.recipient,
  });
  factory SendRequest.fromJson(Map<String, Object?> json) => SendRequest(
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
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        requestMeta: json["request_meta"] == null
            ? null
            : SendRequestRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        recipient: SendRequestRecipient.fromJson(json["recipient"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (fullMessage != null) "full_message": encodeValue(fullMessage),
        if (email != null) "email": encodeValue(email),
        if (messageTemplate != null)
          "message_template": encodeValue(messageTemplate),
        if (senderId != null) "sender_id": encodeValue(senderId),
        if (purpose != null) "purpose": encodeValue(purpose),
        if (customData != null) "custom_data": encodeValue(customData),
        if (requestMeta != null) "request_meta": encodeValue(requestMeta),
        "recipient": encodeValue(recipient),
      };
}
