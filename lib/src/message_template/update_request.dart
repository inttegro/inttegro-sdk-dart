part of '../../message_template.dart';

/// Parameters for updating a message template.
///
/// Carries [name], [about], [channel], and [purpose], among other supported
/// fields.
final class UpdateRequest implements InttegroValue {
  final String? name;
  final String? about;
  final Channel? channel;
  final String? purpose;
  final String? locale;
  final List<VariableInput>? variables;
  final SMSContentInput? sms;
  final EmailContentInput? email;
  final List<String>? attachments;
  final String id;
  const UpdateRequest({
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
  factory UpdateRequest.fromJson(Map<String, Object?> json) => UpdateRequest(
        name: json["name"] == null ? null : json["name"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        channel:
            json["channel"] == null ? null : Channel.fromJson(json["channel"]),
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        locale: json["locale"] == null ? null : json["locale"] as String,
        variables: json["variables"] == null
            ? null
            : (json["variables"] as List)
                .map(
                  (item) => VariableInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        sms: json["sms"] == null
            ? null
            : SMSContentInput.fromJson(
                (json["sms"] as Map).cast<String, Object?>(),
              ),
        email: json["email"] == null
            ? null
            : EmailContentInput.fromJson(
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
        if (name != null) "name": encodeValue(name),
        if (about != null) "about": encodeValue(about),
        if (channel != null) "channel": encodeValue(channel),
        if (purpose != null) "purpose": encodeValue(purpose),
        if (locale != null) "locale": encodeValue(locale),
        if (variables != null) "variables": encodeValue(variables),
        if (sms != null) "sms": encodeValue(sms),
        if (email != null) "email": encodeValue(email),
        if (attachments != null) "attachments": encodeValue(attachments),
        "id": encodeValue(id),
      };
}
