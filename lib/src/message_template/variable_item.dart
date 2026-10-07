part of '../../message_template.dart';

/// The schema for one item in an array-valued template variable.
final class VariableItem implements InttegroValue {
  final String? about;
  final Object? defaultValue;
  final String name;
  final bool requiredValue;
  final VariableItemType type;
  const VariableItem({
    this.about,
    this.defaultValue,
    required this.name,
    required this.requiredValue,
    required this.type,
  });
  factory VariableItem.fromJson(Map<String, Object?> json) => VariableItem(
        about: json["about"] == null ? null : json["about"] as String,
        defaultValue: json["default"],
        name: json["name"] as String,
        requiredValue: json["required"] as bool,
        type: VariableItemType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": encodeValue(about),
        if (defaultValue != null) "default": encodeValue(defaultValue),
        "name": encodeValue(name),
        "required": encodeValue(requiredValue),
        "type": encodeValue(type),
      };
}
