part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class MessageTemplateEmailContentInput implements _InttegroValue {
  final MessageTemplateMailboxInput? from;
  final MessageTemplateMailboxInput? replyTo;
  final MessageHeaders? headers;
  final String subject;
  final String html;
  const MessageTemplateEmailContentInput({
    this.from,
    this.replyTo,
    this.headers,
    required this.subject,
    required this.html,
  });
  factory MessageTemplateEmailContentInput.fromJson(
    Map<String, Object?> json,
  ) =>
      MessageTemplateEmailContentInput(
        from: json["from"] == null
            ? null
            : MessageTemplateMailboxInput.fromJson(
                (json["from"] as Map).cast<String, Object?>(),
              ),
        replyTo: json["reply_to"] == null
            ? null
            : MessageTemplateMailboxInput.fromJson(
                (json["reply_to"] as Map).cast<String, Object?>(),
              ),
        headers: json["headers"] == null
            ? null
            : MessageHeaders.fromJson(json["headers"]),
        subject: json["subject"] as String,
        html: json["html"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (from != null) "from": _encodeValue(from),
        if (replyTo != null) "reply_to": _encodeValue(replyTo),
        if (headers != null) "headers": _encodeValue(headers),
        "subject": _encodeValue(subject),
        "html": _encodeValue(html),
      };
}
