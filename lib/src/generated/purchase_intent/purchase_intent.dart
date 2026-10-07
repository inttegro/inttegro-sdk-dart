part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntent implements _InttegroValue {
  final bool allowVariants;
  final DateTime createdAt;
  final DateTime? expiresAt;
  final String id;
  final DateTime? inactiveAt;
  final PurchaseIntentMerchant? merchant;
  final PurchaseIntentPrice? price;
  final PurchaseIntentPresentation? presentation;
  final PurchaseIntentProduct? product;
  final PurchaseIntentQuantity quantity;
  final PurchaseIntentStatus status;
  final DateTime? updatedAt;
  final PurchaseIntentUsage usage;
  final PurchaseIntentVariantSet? variantSet;
  const PurchaseIntent({
    required this.allowVariants,
    required this.createdAt,
    this.expiresAt,
    required this.id,
    this.inactiveAt,
    this.merchant,
    this.price,
    this.presentation,
    this.product,
    required this.quantity,
    required this.status,
    this.updatedAt,
    required this.usage,
    this.variantSet,
  });
  factory PurchaseIntent.fromJson(Map<String, Object?> json) => PurchaseIntent(
        allowVariants: json["allow_variants"] as bool,
        createdAt: _decodeDateTime(json["created_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        id: json["id"] as String,
        inactiveAt: json["inactive_at"] == null
            ? null
            : _decodeDateTime(json["inactive_at"]),
        merchant: json["merchant"] == null
            ? null
            : PurchaseIntentMerchant.fromJson(
                (json["merchant"] as Map).cast<String, Object?>(),
              ),
        price: json["price"] == null
            ? null
            : PurchaseIntentPrice.fromJson(
                (json["price"] as Map).cast<String, Object?>(),
              ),
        presentation: json["presentation"] == null
            ? null
            : PurchaseIntentPresentation.fromJson(
                (json["presentation"] as Map).cast<String, Object?>(),
              ),
        product: json["product"] == null
            ? null
            : PurchaseIntentProduct.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        quantity: PurchaseIntentQuantity.fromJson(
          (json["quantity"] as Map).cast<String, Object?>(),
        ),
        status: PurchaseIntentStatus.fromJson(json["status"]),
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
        usage: PurchaseIntentUsage.fromJson(
          (json["usage"] as Map).cast<String, Object?>(),
        ),
        variantSet: json["variant_set"] == null
            ? null
            : PurchaseIntentVariantSet.fromJson(
                (json["variant_set"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "allow_variants": _encodeValue(allowVariants),
        "created_at": _encodeValue(createdAt),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        "id": _encodeValue(id),
        if (inactiveAt != null) "inactive_at": _encodeValue(inactiveAt),
        if (merchant != null) "merchant": _encodeValue(merchant),
        if (price != null) "price": _encodeValue(price),
        if (presentation != null) "presentation": _encodeValue(presentation),
        if (product != null) "product": _encodeValue(product),
        "quantity": _encodeValue(quantity),
        "status": _encodeValue(status),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
        "usage": _encodeValue(usage),
        if (variantSet != null) "variant_set": _encodeValue(variantSet),
      };
}
