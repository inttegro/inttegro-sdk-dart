part of '../../message_template.dart';

/// Variable item fields accepted by the message template API.
///
/// Carries [about], [defaultValue], [requiredValue], and [name], among other
/// supported fields.
final class VariableItemInput implements InttegroValue {
  final String? about;
  final Object? defaultValue;
  final bool? requiredValue;
  final String name;
  final VariableItemType type;
  const VariableItemInput({
    this.about,
    this.defaultValue,
    this.requiredValue,
    required this.name,
    required this.type,
  });
  factory VariableItemInput.fromJson(
    Map<String, Object?> json,
  ) =>
      VariableItemInput(
        about: json["about"] == null ? null : json["about"] as String,
        defaultValue: json["default"],
        requiredValue:
            json["required"] == null ? null : json["required"] as bool,
        name: json["name"] as String,
        type: VariableItemType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": encodeValue(about),
        if (defaultValue != null) "default": encodeValue(defaultValue),
        if (requiredValue != null) "required": encodeValue(requiredValue),
        "name": encodeValue(name),
        "type": encodeValue(type),
      };
}
