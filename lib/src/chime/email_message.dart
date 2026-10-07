part of '../../chime.dart';

/// Rendered email content and its sender, headers, schema, and safety result.
///
/// Exposes [subject], [text], [html], and [from], among other contract fields.
final class EmailMessage implements InttegroValue {
  final String? subject;
  final String? text;
  final String? html;
  final EmailMailbox? from;
  final EmailMailbox? replyTo;
  final core.MessageHeaders? headers;
  final EmailSafetyResult? safety;
  final EmailSchemaMarkup? schema;
  const EmailMessage({
    this.subject,
    this.text,
    this.html,
    this.from,
    this.replyTo,
    this.headers,
    this.safety,
    this.schema,
  });
  factory EmailMessage.fromJson(Map<String, Object?> json) => EmailMessage(
        subject: json["subject"] == null ? null : json["subject"] as String,
        text: json["text"] == null ? null : json["text"] as String,
        html: json["html"] == null ? null : json["html"] as String,
        from: json["from"] == null
            ? null
            : EmailMailbox.fromJson(
                (json["from"] as Map).cast<String, Object?>(),
              ),
        replyTo: json["reply_to"] == null
            ? null
            : EmailMailbox.fromJson(
                (json["reply_to"] as Map).cast<String, Object?>(),
              ),
        headers: json["headers"] == null
            ? null
            : core.MessageHeaders.fromJson(json["headers"]),
        safety: json["safety"] == null
            ? null
            : EmailSafetyResult.fromJson(
                (json["safety"] as Map).cast<String, Object?>(),
              ),
        schema: json["schema"] == null
            ? null
            : EmailSchemaMarkup.fromJson(
                (json["schema"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (subject != null) "subject": encodeValue(subject),
        if (text != null) "text": encodeValue(text),
        if (html != null) "html": encodeValue(html),
        if (from != null) "from": encodeValue(from),
        if (replyTo != null) "reply_to": encodeValue(replyTo),
        if (headers != null) "headers": encodeValue(headers),
        if (safety != null) "safety": encodeValue(safety),
        if (schema != null) "schema": encodeValue(schema),
      };
}
