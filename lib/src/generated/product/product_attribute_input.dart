part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ProductAttributeInput implements _InttegroValue {
  final String name;
  final String value;
  const ProductAttributeInput({required this.name, required this.value});
  factory ProductAttributeInput.fromJson(Map<String, Object?> json) =>
      ProductAttributeInput(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        "value": _encodeValue(value),
      };
}
