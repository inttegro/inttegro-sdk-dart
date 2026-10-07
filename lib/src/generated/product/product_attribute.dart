part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ProductAttribute implements _InttegroValue {
  final String name;
  final String value;
  const ProductAttribute({required this.name, required this.value});
  factory ProductAttribute.fromJson(Map<String, Object?> json) =>
      ProductAttribute(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        "value": _encodeValue(value),
      };
}
