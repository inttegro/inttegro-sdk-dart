part of '../../message_template.dart';

/// Parameters for rendering a message-template preview.
///
/// Carries [messageTemplate].
final class RenderPreviewRequest implements InttegroValue {
  final ReferenceInput messageTemplate;
  const RenderPreviewRequest({required this.messageTemplate});
  factory RenderPreviewRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      RenderPreviewRequest(
        messageTemplate: ReferenceInput.fromJson(
          (json["message_template"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": encodeValue(messageTemplate),
      };
}
