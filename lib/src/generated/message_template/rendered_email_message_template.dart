part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class RenderedEmailMessageTemplate implements _InttegroValue {
  final String subject;
  final String text;
  final String? html;
  final MessageTemplateMailbox? from;
  final MessageTemplateMailbox? replyTo;
  final MessageHeaders? headers;
  final MessageTemplateSafetyResult? safety;
  const RenderedEmailMessageTemplate({
    required this.subject,
    required this.text,
    this.html,
    this.from,
    this.replyTo,
    this.headers,
    this.safety,
  });
  factory RenderedEmailMessageTemplate.fromJson(Map<String, Object?> json) =>
      RenderedEmailMessageTemplate(
        subject: json["subject"] as String,
        text: json["text"] as String,
        html: json["html"] == null ? null : json["html"] as String,
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
        safety: json["safety"] == null
            ? null
            : MessageTemplateSafetyResult.fromJson(
                (json["safety"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "subject": _encodeValue(subject),
        "text": _encodeValue(text),
        if (html != null) "html": _encodeValue(html),
        if (from != null) "from": _encodeValue(from),
        if (replyTo != null) "reply_to": _encodeValue(replyTo),
        if (headers != null) "headers": _encodeValue(headers),
        if (safety != null) "safety": _encodeValue(safety),
      };
}
