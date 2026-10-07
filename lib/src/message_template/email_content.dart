part of '../../message_template.dart';

/// Email content, sender, reply-to address, and headers stored on a template.
final class EmailContent implements InttegroValue {
  final String subject;
  final String html;
  final Mailbox? from;
  final Mailbox? replyTo;
  final core.MessageHeaders? headers;
  const EmailContent({
    required this.subject,
    required this.html,
    this.from,
    this.replyTo,
    this.headers,
  });
  factory EmailContent.fromJson(Map<String, Object?> json) => EmailContent(
        subject: json["subject"] as String,
        html: json["html"] as String,
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
      );
  @override
  Map<String, Object?> toJson() => {
        "subject": encodeValue(subject),
        "html": encodeValue(html),
        if (from != null) "from": encodeValue(from),
        if (replyTo != null) "reply_to": encodeValue(replyTo),
        if (headers != null) "headers": encodeValue(headers),
      };
}
