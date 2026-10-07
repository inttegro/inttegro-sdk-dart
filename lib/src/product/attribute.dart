part of '../../product.dart';

/// One named product attribute and its value.
final class Attribute implements InttegroValue {
  final String name;
  final String value;
  const Attribute({required this.name, required this.value});
  factory Attribute.fromJson(Map<String, Object?> json) => Attribute(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": encodeValue(name),
        "value": encodeValue(value),
      };
}
