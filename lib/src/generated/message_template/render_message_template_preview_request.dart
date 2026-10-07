part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class RenderMessageTemplatePreviewRequest implements _InttegroValue {
  final MessageTemplateReferenceInput messageTemplate;
  const RenderMessageTemplatePreviewRequest({required this.messageTemplate});
  factory RenderMessageTemplatePreviewRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      RenderMessageTemplatePreviewRequest(
        messageTemplate: MessageTemplateReferenceInput.fromJson(
          (json["message_template"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": _encodeValue(messageTemplate),
      };
}
