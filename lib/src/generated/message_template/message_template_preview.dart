part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class MessageTemplatePreview implements _InttegroValue {
  final MessageTemplate messageTemplate;
  final RenderedMessageTemplate rendered;
  const MessageTemplatePreview({
    required this.messageTemplate,
    required this.rendered,
  });
  factory MessageTemplatePreview.fromJson(Map<String, Object?> json) =>
      MessageTemplatePreview(
        messageTemplate: MessageTemplate.fromJson(
          (json["message_template"] as Map).cast<String, Object?>(),
        ),
        rendered: RenderedMessageTemplate.fromJson(
          (json["rendered"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": _encodeValue(messageTemplate),
        "rendered": _encodeValue(rendered),
      };
}
