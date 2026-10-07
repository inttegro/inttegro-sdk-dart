part of '../../message_template.dart';

/// Parameters for creating an email message template.
final class EmailCreateRequest implements InttegroValue {
  final String? about;
  final List<String>? attachments;
  final String? locale;
  final List<VariableInput>? variables;
  final Channel channel;
  final EmailContentInput email;
  final String name;
  final String purpose;
  const EmailCreateRequest({
    this.about,
    this.attachments,
    this.locale,
    this.variables,
    required this.channel,
    required this.email,
    required this.name,
    required this.purpose,
  });
  factory EmailCreateRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      EmailCreateRequest(
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
                  (item) => VariableInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        channel: Channel.fromJson(json["channel"]),
        email: EmailContentInput.fromJson(
          (json["email"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] as String,
        purpose: json["purpose"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": encodeValue(about),
        if (attachments != null) "attachments": encodeValue(attachments),
        if (locale != null) "locale": encodeValue(locale),
        if (variables != null) "variables": encodeValue(variables),
        "channel": encodeValue(channel),
        "email": encodeValue(email),
        "name": encodeValue(name),
        "purpose": encodeValue(purpose),
      };
}
