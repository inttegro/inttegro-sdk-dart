part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdateMessageTemplateRequest implements _InttegroValue {
  final String? name;
  final String? about;
  final MessageTemplateChannel? channel;
  final String? purpose;
  final String? locale;
  final List<MessageTemplateVariableInput>? variables;
  final MessageTemplateSMSContentInput? sms;
  final MessageTemplateEmailContentInput? email;
  final List<String>? attachments;
  final String id;
  const UpdateMessageTemplateRequest({
    this.name,
    this.about,
    this.channel,
    this.purpose,
    this.locale,
    this.variables,
    this.sms,
    this.email,
    this.attachments,
    required this.id,
  });
  factory UpdateMessageTemplateRequest.fromJson(Map<String, Object?> json) =>
      UpdateMessageTemplateRequest(
        name: json["name"] == null ? null : json["name"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        channel: json["channel"] == null
            ? null
            : MessageTemplateChannel.fromJson(json["channel"]),
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        locale: json["locale"] == null ? null : json["locale"] as String,
        variables: json["variables"] == null
            ? null
            : (json["variables"] as List)
                .map(
                  (item) => MessageTemplateVariableInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        sms: json["sms"] == null
            ? null
            : MessageTemplateSMSContentInput.fromJson(
                (json["sms"] as Map).cast<String, Object?>(),
              ),
        email: json["email"] == null
            ? null
            : MessageTemplateEmailContentInput.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
        attachments: json["attachments"] == null
            ? null
            : (json["attachments"] as List)
                .map((item) => item as String)
                .toList(),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (about != null) "about": _encodeValue(about),
        if (channel != null) "channel": _encodeValue(channel),
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (locale != null) "locale": _encodeValue(locale),
        if (variables != null) "variables": _encodeValue(variables),
        if (sms != null) "sms": _encodeValue(sms),
        if (email != null) "email": _encodeValue(email),
        if (attachments != null) "attachments": _encodeValue(attachments),
        "id": _encodeValue(id),
      };
}
