part of '../../broadcast.dart';

/// Parameters for sending one message to multiple broadcast recipients.
///
/// Carries [requestMeta], [messageTemplate], [email], and [purpose], among
/// other supported fields.
final class Request implements InttegroValue {
  final RequestRequestMeta? requestMeta;
  final RequestMessageTemplate? messageTemplate;
  final inttegro_chime.EmailMessageInput? email;
  final String? purpose;
  final String? sender;
  final List<Object?> recipients;
  const Request({
    this.requestMeta,
    this.messageTemplate,
    this.email,
    this.purpose,
    this.sender,
    required this.recipients,
  });
  factory Request.fromJson(Map<String, Object?> json) => Request(
        requestMeta: json["request_meta"] == null
            ? null
            : RequestRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        messageTemplate: json["message_template"] == null
            ? null
            : RequestMessageTemplate.fromJson(
                json["message_template"],
              ),
        email: json["email"] == null
            ? null
            : inttegro_chime.EmailMessageInput.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        sender: json["sender"] == null ? null : json["sender"] as String,
        recipients: (json["recipients"] as List).map((item) => item).toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (requestMeta != null) "request_meta": encodeValue(requestMeta),
        if (messageTemplate != null)
          "message_template": encodeValue(messageTemplate),
        if (email != null) "email": encodeValue(email),
        if (purpose != null) "purpose": encodeValue(purpose),
        if (sender != null) "sender": encodeValue(sender),
        "recipients": encodeValue(recipients),
      };
}
