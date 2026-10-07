part of '../../message_template.dart';

/// Variable fields accepted by the message template API.
///
/// Carries [requiredValue], [defaultValue], [about], and [items], among other
/// supported fields.
final class VariableInput implements InttegroValue {
  final bool? requiredValue;
  final Object? defaultValue;
  final String? about;
  final List<VariableItemInput>? items;
  final String name;
  final VariableType type;
  const VariableInput({
    this.requiredValue,
    this.defaultValue,
    this.about,
    this.items,
    required this.name,
    required this.type,
  });
  factory VariableInput.fromJson(Map<String, Object?> json) => VariableInput(
        requiredValue:
            json["required"] == null ? null : json["required"] as bool,
        defaultValue: json["default"],
        about: json["about"] == null ? null : json["about"] as String,
        items: json["items"] == null
            ? null
            : (json["items"] as List)
                .map(
                  (item) => VariableItemInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        name: json["name"] as String,
        type: VariableType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (requiredValue != null) "required": encodeValue(requiredValue),
        if (defaultValue != null) "default": encodeValue(defaultValue),
        if (about != null) "about": encodeValue(about),
        if (items != null) "items": encodeValue(items),
        "name": encodeValue(name),
        "type": encodeValue(type),
      };
}
