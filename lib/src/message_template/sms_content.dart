part of '../../message_template.dart';

/// The SMS body stored on a message template.
final class SMSContent implements InttegroValue {
  final String messageTemplate;
  const SMSContent({required this.messageTemplate});
  factory SMSContent.fromJson(Map<String, Object?> json) => SMSContent(
        messageTemplate: json["message_template"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": encodeValue(messageTemplate),
      };
}
