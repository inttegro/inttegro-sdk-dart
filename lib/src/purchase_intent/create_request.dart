part of '../../purchase_intent.dart';

/// Parameters for creating a purchase intent.
///
/// Carries [product], [productId], [price], and [priceId], among other
/// supported fields.
final class CreateRequest implements InttegroValue {
  final CreateRequestProduct? product;
  final String? productId;
  final CreateRequestPrice? price;
  final String? priceId;
  final CreateRequestUsage? usage;
  final DateTime? expiresAt;
  final Presentation? presentation;
  final CreateRequestQuantity quantity;
  const CreateRequest({
    this.product,
    this.productId,
    this.price,
    this.priceId,
    this.usage,
    this.expiresAt,
    this.presentation,
    required this.quantity,
  });
  factory CreateRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateRequest(
        product: json["product"] == null
            ? null
            : CreateRequestProduct.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        price: json["price"] == null
            ? null
            : CreateRequestPrice.fromJson(
                (json["price"] as Map).cast<String, Object?>(),
              ),
        priceId: json["price_id"] == null ? null : json["price_id"] as String,
        usage: json["usage"] == null
            ? null
            : CreateRequestUsage.fromJson(
                (json["usage"] as Map).cast<String, Object?>(),
              ),
        expiresAt: json["expires_at"] == null
            ? null
            : decodeDateTime(json["expires_at"]),
        presentation: json["presentation"] == null
            ? null
            : Presentation.fromJson(
                (json["presentation"] as Map).cast<String, Object?>(),
              ),
        quantity: CreateRequestQuantity.fromJson(
          (json["quantity"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (product != null) "product": encodeValue(product),
        if (productId != null) "product_id": encodeValue(productId),
        if (price != null) "price": encodeValue(price),
        if (priceId != null) "price_id": encodeValue(priceId),
        if (usage != null) "usage": encodeValue(usage),
        if (expiresAt != null) "expires_at": encodeValue(expiresAt),
        if (presentation != null) "presentation": encodeValue(presentation),
        "quantity": encodeValue(quantity),
      };
}
