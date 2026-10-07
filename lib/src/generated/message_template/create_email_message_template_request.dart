part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateEmailMessageTemplateRequest implements _InttegroValue {
  final String? about;
  final List<String>? attachments;
  final String? locale;
  final List<MessageTemplateVariableInput>? variables;
  final MessageTemplateChannel channel;
  final MessageTemplateEmailContentInput email;
  final String name;
  final String purpose;
  const CreateEmailMessageTemplateRequest({
    this.about,
    this.attachments,
    this.locale,
    this.variables,
    required this.channel,
    required this.email,
    required this.name,
    required this.purpose,
  });
  factory CreateEmailMessageTemplateRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateEmailMessageTemplateRequest(
        about: json["about"] == null ? null : json["about"] as String,
        attachments: json["attachments"] == null
            ? null
            : (json["attachments"] as List)
                .map((item) => item as String)
                .toList(),
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
        channel: MessageTemplateChannel.fromJson(json["channel"]),
        email: MessageTemplateEmailContentInput.fromJson(
          (json["email"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] as String,
        purpose: json["purpose"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (attachments != null) "attachments": _encodeValue(attachments),
        if (locale != null) "locale": _encodeValue(locale),
        if (variables != null) "variables": _encodeValue(variables),
        "channel": _encodeValue(channel),
        "email": _encodeValue(email),
        "name": _encodeValue(name),
        "purpose": _encodeValue(purpose),
      };
}
