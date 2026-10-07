part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateSMSMessageTemplateRequest implements _InttegroValue {
  final String? about;
  final String? locale;
  final List<MessageTemplateVariableInput>? variables;
  final MessageTemplateChannel channel;
  final String name;
  final String purpose;
  final MessageTemplateSMSContentInput sms;
  const CreateSMSMessageTemplateRequest({
    this.about,
    this.locale,
    this.variables,
    required this.channel,
    required this.name,
    required this.purpose,
    required this.sms,
  });
  factory CreateSMSMessageTemplateRequest.fromJson(Map<String, Object?> json) =>
      CreateSMSMessageTemplateRequest(
        about: json["about"] == null ? null : json["about"] as String,
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
        name: json["name"] as String,
        purpose: json["purpose"] as String,
        sms: MessageTemplateSMSContentInput.fromJson(
          (json["sms"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (locale != null) "locale": _encodeValue(locale),
        if (variables != null) "variables": _encodeValue(variables),
        "channel": _encodeValue(channel),
        "name": _encodeValue(name),
        "purpose": _encodeValue(purpose),
        "sms": _encodeValue(sms),
      };
}
