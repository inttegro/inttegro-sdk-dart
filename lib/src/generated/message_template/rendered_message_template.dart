part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class RenderedMessageTemplate implements _InttegroValue {
  final MessageTemplateChannel channel;
  final List<String>? attachments;
  final RenderedSMSMessageTemplate? sms;
  final RenderedEmailMessageTemplate? email;
  const RenderedMessageTemplate({
    required this.channel,
    this.attachments,
    this.sms,
    this.email,
  });
  factory RenderedMessageTemplate.fromJson(Map<String, Object?> json) =>
      RenderedMessageTemplate(
        channel: MessageTemplateChannel.fromJson(json["channel"]),
        attachments: json["attachments"] == null
            ? null
            : (json["attachments"] as List)
                .map((item) => item as String)
                .toList(),
        sms: json["sms"] == null
            ? null
            : RenderedSMSMessageTemplate.fromJson(
                (json["sms"] as Map).cast<String, Object?>(),
              ),
        email: json["email"] == null
            ? null
            : RenderedEmailMessageTemplate.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "channel": _encodeValue(channel),
        if (attachments != null) "attachments": _encodeValue(attachments),
        if (sms != null) "sms": _encodeValue(sms),
        if (email != null) "email": _encodeValue(email),
      };
}
