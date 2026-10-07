part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class MessageTemplateVariableItem implements _InttegroValue {
  final String? about;
  final Object? defaultValue;
  final String name;
  final bool requiredValue;
  final MessageTemplateVariableItemType type;
  const MessageTemplateVariableItem({
    this.about,
    this.defaultValue,
    required this.name,
    required this.requiredValue,
    required this.type,
  });
  factory MessageTemplateVariableItem.fromJson(Map<String, Object?> json) =>
      MessageTemplateVariableItem(
        about: json["about"] == null ? null : json["about"] as String,
        defaultValue: json["default"],
        name: json["name"] as String,
        requiredValue: json["required"] as bool,
        type: MessageTemplateVariableItemType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (defaultValue != null) "default": _encodeValue(defaultValue),
        "name": _encodeValue(name),
        "required": _encodeValue(requiredValue),
        "type": _encodeValue(type),
      };
}
