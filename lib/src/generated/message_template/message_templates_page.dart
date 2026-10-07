part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class MessageTemplatesPage implements _InttegroValue {
  final int number;
  final int size;
  final List<MessageTemplate> messageTemplates;
  const MessageTemplatesPage({
    required this.number,
    required this.size,
    required this.messageTemplates,
  });
  factory MessageTemplatesPage.fromJson(Map<String, Object?> json) =>
      MessageTemplatesPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        messageTemplates: (json["message_templates"] as List)
            .map(
              (item) => MessageTemplate.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "message_templates": _encodeValue(messageTemplates),
      };
}
