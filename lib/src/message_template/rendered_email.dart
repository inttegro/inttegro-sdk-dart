part of '../../message_template.dart';

/// Rendered email content, headers, sender, and safety result.
///
/// Exposes [subject], [text], [html], and [from], among other contract fields.
final class RenderedEmail implements InttegroValue {
  final String subject;
  final String text;
  final String? html;
  final Mailbox? from;
  final Mailbox? replyTo;
  final core.MessageHeaders? headers;
  final SafetyResult? safety;
  const RenderedEmail({
    required this.subject,
    required this.text,
    this.html,
    this.from,
    this.replyTo,
    this.headers,
    this.safety,
  });
  factory RenderedEmail.fromJson(Map<String, Object?> json) => RenderedEmail(
        subject: json["subject"] as String,
        text: json["text"] as String,
        html: json["html"] == null ? null : json["html"] as String,
        from: json["from"] == null
            ? null
            : Mailbox.fromJson(
                (json["from"] as Map).cast<String, Object?>(),
              ),
        replyTo: json["reply_to"] == null
            ? null
            : Mailbox.fromJson(
                (json["reply_to"] as Map).cast<String, Object?>(),
              ),
        headers: json["headers"] == null
            ? null
            : core.MessageHeaders.fromJson(json["headers"]),
        safety: json["safety"] == null
            ? null
            : SafetyResult.fromJson(
                (json["safety"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "subject": encodeValue(subject),
        "text": encodeValue(text),
        if (html != null) "html": encodeValue(html),
        if (from != null) "from": encodeValue(from),
        if (replyTo != null) "reply_to": encodeValue(replyTo),
        if (headers != null) "headers": encodeValue(headers),
        if (safety != null) "safety": encodeValue(safety),
      };
}
