part of '../../purchase_intent.dart';

/// A purchasable variant within a purchase-intent variant set.
///
/// Exposes [active], [position], [price], and [product], among other contract
/// fields.
final class Variant implements InttegroValue {
  final bool active;
  final int? position;
  final Price? price;
  final Product? product;
  final String productId;
  final core.VariantValues variantValues;
  const Variant({
    required this.active,
    this.position,
    this.price,
    this.product,
    required this.productId,
    required this.variantValues,
  });
  factory Variant.fromJson(Map<String, Object?> json) => Variant(
        active: json["active"] as bool,
        position:
            json["position"] == null ? null : (json["position"] as num).toInt(),
        price: json["price"] == null
            ? null
            : Price.fromJson(
                (json["price"] as Map).cast<String, Object?>(),
              ),
        product: json["product"] == null
            ? null
            : Product.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        productId: json["product_id"] as String,
        variantValues: core.VariantValues.fromJson(json["variant_values"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": encodeValue(active),
        if (position != null) "position": encodeValue(position),
        if (price != null) "price": encodeValue(price),
        if (product != null) "product": encodeValue(product),
        "product_id": encodeValue(productId),
        "variant_values": encodeValue(variantValues),
      };
}
