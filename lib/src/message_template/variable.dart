part of '../../message_template.dart';

/// A variable declared by a message template.
final class Variable implements InttegroValue {
  final String? about;
  final Object? defaultValue;
  final List<VariableItem>? items;
  final String name;
  final bool requiredValue;
  final VariableType type;
  const Variable({
    this.about,
    this.defaultValue,
    this.items,
    required this.name,
    required this.requiredValue,
    required this.type,
  });
  factory Variable.fromJson(Map<String, Object?> json) => Variable(
        about: json["about"] == null ? null : json["about"] as String,
        defaultValue: json["default"],
        items: json["items"] == null
            ? null
            : (json["items"] as List)
                .map(
                  (item) => VariableItem.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        name: json["name"] as String,
        requiredValue: json["required"] as bool,
        type: VariableType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": encodeValue(about),
        if (defaultValue != null) "default": encodeValue(defaultValue),
        if (items != null) "items": encodeValue(items),
        "name": encodeValue(name),
        "required": encodeValue(requiredValue),
        "type": encodeValue(type),
      };
}
