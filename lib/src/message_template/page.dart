part of '../../message_template.dart';

/// A page of message templates returned by a list operation.
///
/// Exposes [number], [size], and [messageTemplates].
final class Page implements InttegroValue {
  final int number;
  final int size;
  final List<MessageTemplate> messageTemplates;
  const Page({
    required this.number,
    required this.size,
    required this.messageTemplates,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
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
        "number": encodeValue(number),
        "size": encodeValue(size),
        "message_templates": encodeValue(messageTemplates),
      };
}
