part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class MessageTemplateEmailContent implements _InttegroValue {
  final String subject;
  final String html;
  final MessageTemplateMailbox? from;
  final MessageTemplateMailbox? replyTo;
  final MessageHeaders? headers;
  const MessageTemplateEmailContent({
    required this.subject,
    required this.html,
    this.from,
    this.replyTo,
    this.headers,
  });
  factory MessageTemplateEmailContent.fromJson(Map<String, Object?> json) =>
      MessageTemplateEmailContent(
        subject: json["subject"] as String,
        html: json["html"] as String,
        from: json["from"] == null
            ? null
            : MessageTemplateMailbox.fromJson(
                (json["from"] as Map).cast<String, Object?>(),
              ),
        replyTo: json["reply_to"] == null
            ? null
            : MessageTemplateMailbox.fromJson(
                (json["reply_to"] as Map).cast<String, Object?>(),
              ),
        headers: json["headers"] == null
            ? null
            : MessageHeaders.fromJson(json["headers"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "subject": _encodeValue(subject),
        "html": _encodeValue(html),
        if (from != null) "from": _encodeValue(from),
        if (replyTo != null) "reply_to": _encodeValue(replyTo),
        if (headers != null) "headers": _encodeValue(headers),
      };
}
