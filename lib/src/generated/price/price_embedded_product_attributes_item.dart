part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PriceEmbeddedProductAttributesItem implements _InttegroValue {
  final String name;
  final String value;
  const PriceEmbeddedProductAttributesItem({
    required this.name,
    required this.value,
  });
  factory PriceEmbeddedProductAttributesItem.fromJson(
    Map<String, Object?> json,
  ) =>
      PriceEmbeddedProductAttributesItem(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        "value": _encodeValue(value),
      };
}
