part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class MessageTemplateSMSContentInput implements _InttegroValue {
  final String messageTemplate;
  const MessageTemplateSMSContentInput({required this.messageTemplate});
  factory MessageTemplateSMSContentInput.fromJson(Map<String, Object?> json) =>
      MessageTemplateSMSContentInput(
        messageTemplate: json["message_template"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": _encodeValue(messageTemplate),
      };
}
