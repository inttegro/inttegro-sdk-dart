part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreatePurchaseIntentRequest implements _InttegroValue {
  final CreatePurchaseIntentRequestProduct? product;
  final String? productId;
  final CreatePurchaseIntentRequestPrice? price;
  final String? priceId;
  final CreatePurchaseIntentRequestUsage? usage;
  final DateTime? expiresAt;
  final PurchaseIntentPresentation? presentation;
  final CreatePurchaseIntentRequestQuantity quantity;
  const CreatePurchaseIntentRequest({
    this.product,
    this.productId,
    this.price,
    this.priceId,
    this.usage,
    this.expiresAt,
    this.presentation,
    required this.quantity,
  });
  factory CreatePurchaseIntentRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      CreatePurchaseIntentRequest(
        product: json["product"] == null
            ? null
            : CreatePurchaseIntentRequestProduct.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        price: json["price"] == null
            ? null
            : CreatePurchaseIntentRequestPrice.fromJson(
                (json["price"] as Map).cast<String, Object?>(),
              ),
        priceId: json["price_id"] == null ? null : json["price_id"] as String,
        usage: json["usage"] == null
            ? null
            : CreatePurchaseIntentRequestUsage.fromJson(
                (json["usage"] as Map).cast<String, Object?>(),
              ),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        presentation: json["presentation"] == null
            ? null
            : PurchaseIntentPresentation.fromJson(
                (json["presentation"] as Map).cast<String, Object?>(),
              ),
        quantity: CreatePurchaseIntentRequestQuantity.fromJson(
          (json["quantity"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (product != null) "product": _encodeValue(product),
        if (productId != null) "product_id": _encodeValue(productId),
        if (price != null) "price": _encodeValue(price),
        if (priceId != null) "price_id": _encodeValue(priceId),
        if (usage != null) "usage": _encodeValue(usage),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        if (presentation != null) "presentation": _encodeValue(presentation),
        "quantity": _encodeValue(quantity),
      };
}
