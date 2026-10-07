part of '../../price.dart';

/// One product attribute embedded in a price response.
final class EmbeddedProductAttributesItem implements InttegroValue {
  final String name;
  final String value;
  const EmbeddedProductAttributesItem({
    required this.name,
    required this.value,
  });
  factory EmbeddedProductAttributesItem.fromJson(
    Map<String, Object?> json,
  ) =>
      EmbeddedProductAttributesItem(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": encodeValue(name),
        "value": encodeValue(value),
      };
}
