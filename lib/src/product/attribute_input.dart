part of '../../product.dart';

/// Attribute fields accepted by the product API.
///
/// Carries [name] and [value].
final class AttributeInput implements InttegroValue {
  final String name;
  final String value;
  const AttributeInput({required this.name, required this.value});
  factory AttributeInput.fromJson(Map<String, Object?> json) => AttributeInput(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": encodeValue(name),
        "value": encodeValue(value),
      };
}
