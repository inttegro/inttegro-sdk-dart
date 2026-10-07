part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ChimeEmailMessage implements _InttegroValue {
  final String? subject;
  final String? text;
  final String? html;
  final ChimeEmailMailbox? from;
  final ChimeEmailMailbox? replyTo;
  final MessageHeaders? headers;
  final ChimeEmailSafetyResult? safety;
  final ChimeEmailSchemaMarkup? schema;
  const ChimeEmailMessage({
    this.subject,
    this.text,
    this.html,
    this.from,
    this.replyTo,
    this.headers,
    this.safety,
    this.schema,
  });
  factory ChimeEmailMessage.fromJson(Map<String, Object?> json) =>
      ChimeEmailMessage(
        subject: json["subject"] == null ? null : json["subject"] as String,
        text: json["text"] == null ? null : json["text"] as String,
        html: json["html"] == null ? null : json["html"] as String,
        from: json["from"] == null
            ? null
            : ChimeEmailMailbox.fromJson(
                (json["from"] as Map).cast<String, Object?>(),
              ),
        replyTo: json["reply_to"] == null
            ? null
            : ChimeEmailMailbox.fromJson(
                (json["reply_to"] as Map).cast<String, Object?>(),
              ),
        headers: json["headers"] == null
            ? null
            : MessageHeaders.fromJson(json["headers"]),
        safety: json["safety"] == null
            ? null
            : ChimeEmailSafetyResult.fromJson(
                (json["safety"] as Map).cast<String, Object?>(),
              ),
        schema: json["schema"] == null
            ? null
            : ChimeEmailSchemaMarkup.fromJson(
                (json["schema"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (subject != null) "subject": _encodeValue(subject),
        if (text != null) "text": _encodeValue(text),
        if (html != null) "html": _encodeValue(html),
        if (from != null) "from": _encodeValue(from),
        if (replyTo != null) "reply_to": _encodeValue(replyTo),
        if (headers != null) "headers": _encodeValue(headers),
        if (safety != null) "safety": _encodeValue(safety),
        if (schema != null) "schema": _encodeValue(schema),
      };
}
