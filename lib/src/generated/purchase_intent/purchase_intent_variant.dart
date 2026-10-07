part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntentVariant implements _InttegroValue {
  final bool active;
  final int? position;
  final PurchaseIntentPrice? price;
  final PurchaseIntentProduct? product;
  final String productId;
  final VariantValues variantValues;
  const PurchaseIntentVariant({
    required this.active,
    this.position,
    this.price,
    this.product,
    required this.productId,
    required this.variantValues,
  });
  factory PurchaseIntentVariant.fromJson(Map<String, Object?> json) =>
      PurchaseIntentVariant(
        active: json["active"] as bool,
        position:
            json["position"] == null ? null : (json["position"] as num).toInt(),
        price: json["price"] == null
            ? null
            : PurchaseIntentPrice.fromJson(
                (json["price"] as Map).cast<String, Object?>(),
              ),
        product: json["product"] == null
            ? null
            : PurchaseIntentProduct.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        productId: json["product_id"] as String,
        variantValues: VariantValues.fromJson(json["variant_values"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": _encodeValue(active),
        if (position != null) "position": _encodeValue(position),
        if (price != null) "price": _encodeValue(price),
        if (product != null) "product": _encodeValue(product),
        "product_id": _encodeValue(productId),
        "variant_values": _encodeValue(variantValues),
      };
}
