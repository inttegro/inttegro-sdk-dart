part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class MessageTemplateSMSContent implements _InttegroValue {
  final String messageTemplate;
  const MessageTemplateSMSContent({required this.messageTemplate});
  factory MessageTemplateSMSContent.fromJson(Map<String, Object?> json) =>
      MessageTemplateSMSContent(
        messageTemplate: json["message_template"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": _encodeValue(messageTemplate),
      };
}
