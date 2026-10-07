part of '../../message_template.dart';

/// Email content fields accepted by the message template API.
///
/// Carries [from], [replyTo], [headers], and [subject], among other supported
/// fields.
final class EmailContentInput implements InttegroValue {
  final MailboxInput? from;
  final MailboxInput? replyTo;
  final core.MessageHeaders? headers;
  final String subject;
  final String html;
  const EmailContentInput({
    this.from,
    this.replyTo,
    this.headers,
    required this.subject,
    required this.html,
  });
  factory EmailContentInput.fromJson(
    Map<String, Object?> json,
  ) =>
      EmailContentInput(
        from: json["from"] == null
            ? null
            : MailboxInput.fromJson(
                (json["from"] as Map).cast<String, Object?>(),
              ),
        replyTo: json["reply_to"] == null
            ? null
            : MailboxInput.fromJson(
                (json["reply_to"] as Map).cast<String, Object?>(),
              ),
        headers: json["headers"] == null
            ? null
            : core.MessageHeaders.fromJson(json["headers"]),
        subject: json["subject"] as String,
        html: json["html"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (from != null) "from": encodeValue(from),
        if (replyTo != null) "reply_to": encodeValue(replyTo),
        if (headers != null) "headers": encodeValue(headers),
        "subject": encodeValue(subject),
        "html": encodeValue(html),
      };
}
