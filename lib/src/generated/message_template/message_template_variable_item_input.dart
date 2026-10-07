part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class MessageTemplateVariableItemInput implements _InttegroValue {
  final String? about;
  final Object? defaultValue;
  final bool? requiredValue;
  final String name;
  final MessageTemplateVariableItemType type;
  const MessageTemplateVariableItemInput({
    this.about,
    this.defaultValue,
    this.requiredValue,
    required this.name,
    required this.type,
  });
  factory MessageTemplateVariableItemInput.fromJson(
    Map<String, Object?> json,
  ) =>
      MessageTemplateVariableItemInput(
        about: json["about"] == null ? null : json["about"] as String,
        defaultValue: json["default"],
        requiredValue:
            json["required"] == null ? null : json["required"] as bool,
        name: json["name"] as String,
        type: MessageTemplateVariableItemType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (defaultValue != null) "default": _encodeValue(defaultValue),
        if (requiredValue != null) "required": _encodeValue(requiredValue),
        "name": _encodeValue(name),
        "type": _encodeValue(type),
      };
}
