part of '../../message_template.dart';

/// SMS content fields accepted by the message template API.
///
/// Carries [messageTemplate].
final class SMSContentInput implements InttegroValue {
  final String messageTemplate;
  const SMSContentInput({required this.messageTemplate});
  factory SMSContentInput.fromJson(Map<String, Object?> json) =>
      SMSContentInput(
        messageTemplate: json["message_template"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": encodeValue(messageTemplate),
      };
}
