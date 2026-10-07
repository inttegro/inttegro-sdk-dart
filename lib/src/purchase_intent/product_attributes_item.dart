part of '../../purchase_intent.dart';

/// One product attribute embedded in a purchase intent.
final class ProductAttributesItem implements InttegroValue {
  final String name;
  final String value;
  const ProductAttributesItem({
    required this.name,
    required this.value,
  });
  factory ProductAttributesItem.fromJson(
    Map<String, Object?> json,
  ) =>
      ProductAttributesItem(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": encodeValue(name),
        "value": encodeValue(value),
      };
}
