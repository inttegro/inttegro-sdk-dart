part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ChimeEmailMessageInput implements _InttegroValue {
  final String? html;
  final String? replyTo;
  final MessageHeaders? headers;
  final String subject;
  final String text;
  final ChimeEmailMailboxInput from;
  const ChimeEmailMessageInput({
    this.html,
    this.replyTo,
    this.headers,
    required this.subject,
    required this.text,
    required this.from,
  });
  factory ChimeEmailMessageInput.fromJson(Map<String, Object?> json) =>
      ChimeEmailMessageInput(
        html: json["html"] == null ? null : json["html"] as String,
        replyTo: json["reply_to"] == null ? null : json["reply_to"] as String,
        headers: json["headers"] == null
            ? null
            : MessageHeaders.fromJson(json["headers"]),
        subject: json["subject"] as String,
        text: json["text"] as String,
        from: ChimeEmailMailboxInput.fromJson(
          (json["from"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (html != null) "html": _encodeValue(html),
        if (replyTo != null) "reply_to": _encodeValue(replyTo),
        if (headers != null) "headers": _encodeValue(headers),
        "subject": _encodeValue(subject),
        "text": _encodeValue(text),
        "from": _encodeValue(from),
      };
}
