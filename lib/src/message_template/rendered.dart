part of '../../message_template.dart';

/// Rendered message content for the template's selected channel.
///
/// Exposes [channel], [attachments], [sms], and [email].
final class Rendered implements InttegroValue {
  final Channel channel;
  final List<String>? attachments;
  final RenderedSMS? sms;
  final RenderedEmail? email;
  const Rendered({
    required this.channel,
    this.attachments,
    this.sms,
    this.email,
  });
  factory Rendered.fromJson(Map<String, Object?> json) => Rendered(
        channel: Channel.fromJson(json["channel"]),
        attachments: json["attachments"] == null
            ? null
            : (json["attachments"] as List)
                .map((item) => item as String)
                .toList(),
        sms: json["sms"] == null
            ? null
            : RenderedSMS.fromJson(
                (json["sms"] as Map).cast<String, Object?>(),
              ),
        email: json["email"] == null
            ? null
            : RenderedEmail.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "channel": encodeValue(channel),
        if (attachments != null) "attachments": encodeValue(attachments),
        if (sms != null) "sms": encodeValue(sms),
        if (email != null) "email": encodeValue(email),
      };
}
