part of '../../message_template.dart';

/// A message template and the content rendered from it for preview.
///
/// Exposes [messageTemplate] and [rendered].
final class Preview implements InttegroValue {
  final MessageTemplate messageTemplate;
  final Rendered rendered;
  const Preview({
    required this.messageTemplate,
    required this.rendered,
  });
  factory Preview.fromJson(Map<String, Object?> json) => Preview(
        messageTemplate: MessageTemplate.fromJson(
          (json["message_template"] as Map).cast<String, Object?>(),
        ),
        rendered: Rendered.fromJson(
          (json["rendered"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "message_template": encodeValue(messageTemplate),
        "rendered": encodeValue(rendered),
      };
}
