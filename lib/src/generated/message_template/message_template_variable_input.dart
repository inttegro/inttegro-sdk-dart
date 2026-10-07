part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class MessageTemplateVariableInput implements _InttegroValue {
  final bool? requiredValue;
  final Object? defaultValue;
  final String? about;
  final List<MessageTemplateVariableItemInput>? items;
  final String name;
  final MessageTemplateVariableType type;
  const MessageTemplateVariableInput({
    this.requiredValue,
    this.defaultValue,
    this.about,
    this.items,
    required this.name,
    required this.type,
  });
  factory MessageTemplateVariableInput.fromJson(Map<String, Object?> json) =>
      MessageTemplateVariableInput(
        requiredValue:
            json["required"] == null ? null : json["required"] as bool,
        defaultValue: json["default"],
        about: json["about"] == null ? null : json["about"] as String,
        items: json["items"] == null
            ? null
            : (json["items"] as List)
                .map(
                  (item) => MessageTemplateVariableItemInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        name: json["name"] as String,
        type: MessageTemplateVariableType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (requiredValue != null) "required": _encodeValue(requiredValue),
        if (defaultValue != null) "default": _encodeValue(defaultValue),
        if (about != null) "about": _encodeValue(about),
        if (items != null) "items": _encodeValue(items),
        "name": _encodeValue(name),
        "type": _encodeValue(type),
      };
}
