part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntentProductAttributesItem implements _InttegroValue {
  final String name;
  final String value;
  const PurchaseIntentProductAttributesItem({
    required this.name,
    required this.value,
  });
  factory PurchaseIntentProductAttributesItem.fromJson(
    Map<String, Object?> json,
  ) =>
      PurchaseIntentProductAttributesItem(
        name: json["name"] as String,
        value: json["value"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        "value": _encodeValue(value),
      };
}
