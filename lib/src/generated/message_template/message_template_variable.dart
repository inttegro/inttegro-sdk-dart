part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class MessageTemplateVariable implements _InttegroValue {
  final String? about;
  final Object? defaultValue;
  final List<MessageTemplateVariableItem>? items;
  final String name;
  final bool requiredValue;
  final MessageTemplateVariableType type;
  const MessageTemplateVariable({
    this.about,
    this.defaultValue,
    this.items,
    required this.name,
    required this.requiredValue,
    required this.type,
  });
  factory MessageTemplateVariable.fromJson(Map<String, Object?> json) =>
      MessageTemplateVariable(
        about: json["about"] == null ? null : json["about"] as String,
        defaultValue: json["default"],
        items: json["items"] == null
            ? null
            : (json["items"] as List)
                .map(
                  (item) => MessageTemplateVariableItem.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        name: json["name"] as String,
        requiredValue: json["required"] as bool,
        type: MessageTemplateVariableType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (defaultValue != null) "default": _encodeValue(defaultValue),
        if (items != null) "items": _encodeValue(items),
        "name": _encodeValue(name),
        "required": _encodeValue(requiredValue),
        "type": _encodeValue(type),
      };
}
