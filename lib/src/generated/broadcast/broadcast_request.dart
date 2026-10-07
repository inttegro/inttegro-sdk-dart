part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class BroadcastRequest implements _InttegroValue {
  final BroadcastRequestRequestMeta? requestMeta;
  final BroadcastRequestMessageTemplate? messageTemplate;
  final ChimeEmailMessageInput? email;
  final String? purpose;
  final String? sender;
  final List<Object?> recipients;
  const BroadcastRequest({
    this.requestMeta,
    this.messageTemplate,
    this.email,
    this.purpose,
    this.sender,
    required this.recipients,
  });
  factory BroadcastRequest.fromJson(Map<String, Object?> json) =>
      BroadcastRequest(
        requestMeta: json["request_meta"] == null
            ? null
            : BroadcastRequestRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        messageTemplate: json["message_template"] == null
            ? null
            : BroadcastRequestMessageTemplate.fromJson(
                json["message_template"],
              ),
        email: json["email"] == null
            ? null
            : ChimeEmailMessageInput.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        sender: json["sender"] == null ? null : json["sender"] as String,
        recipients: (json["recipients"] as List).map((item) => item).toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        if (messageTemplate != null)
          "message_template": _encodeValue(messageTemplate),
        if (email != null) "email": _encodeValue(email),
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (sender != null) "sender": _encodeValue(sender),
        "recipients": _encodeValue(recipients),
      };
}
