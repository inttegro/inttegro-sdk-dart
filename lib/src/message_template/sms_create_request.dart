part of '../../message_template.dart';

/// Parameters for creating an SMS message template.
final class SMSCreateRequest implements InttegroValue {
  final String? about;
  final String? locale;
  final List<VariableInput>? variables;
  final Channel channel;
  final String name;
  final String purpose;
  final SMSContentInput sms;
  const SMSCreateRequest({
    this.about,
    this.locale,
    this.variables,
    required this.channel,
    required this.name,
    required this.purpose,
    required this.sms,
  });
  factory SMSCreateRequest.fromJson(Map<String, Object?> json) =>
      SMSCreateRequest(
        about: json["about"] == null ? null : json["about"] as String,
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
        name: json["name"] as String,
        purpose: json["purpose"] as String,
        sms: SMSContentInput.fromJson(
          (json["sms"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": encodeValue(about),
        if (locale != null) "locale": encodeValue(locale),
        if (variables != null) "variables": encodeValue(variables),
        "channel": encodeValue(channel),
        "name": encodeValue(name),
        "purpose": encodeValue(purpose),
        "sms": encodeValue(sms),
      };
}
