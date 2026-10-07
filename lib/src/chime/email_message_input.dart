part of '../../chime.dart';

/// Email message fields accepted by the Chime API.
///
/// Carries [html], [replyTo], [headers], and [subject], among other supported
/// fields.
final class EmailMessageInput implements InttegroValue {
  final String? html;
  final String? replyTo;
  final core.MessageHeaders? headers;
  final String subject;
  final String text;
  final EmailMailboxInput from;
  const EmailMessageInput({
    this.html,
    this.replyTo,
    this.headers,
    required this.subject,
    required this.text,
    required this.from,
  });
  factory EmailMessageInput.fromJson(Map<String, Object?> json) =>
      EmailMessageInput(
        html: json["html"] == null ? null : json["html"] as String,
        replyTo: json["reply_to"] == null ? null : json["reply_to"] as String,
        headers: json["headers"] == null
            ? null
            : core.MessageHeaders.fromJson(json["headers"]),
        subject: json["subject"] as String,
        text: json["text"] as String,
        from: EmailMailboxInput.fromJson(
          (json["from"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (html != null) "html": encodeValue(html),
        if (replyTo != null) "reply_to": encodeValue(replyTo),
        if (headers != null) "headers": encodeValue(headers),
        "subject": encodeValue(subject),
        "text": encodeValue(text),
        "from": encodeValue(from),
      };
}
