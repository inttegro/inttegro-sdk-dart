part of '../../purchase_intent.dart';

/// A customer-facing intent to purchase a product at a configured price and
/// quantity.
///
/// Presentation and variant data describe the buy page, while [usage] records
/// how the intent may be or has been consumed.
final class PurchaseIntent implements InttegroValue {
  final bool allowVariants;
  final DateTime createdAt;
  final DateTime? expiresAt;
  final String id;
  final DateTime? inactiveAt;
  final Merchant? merchant;
  final Price? price;
  final Presentation? presentation;
  final Product? product;
  final Quantity quantity;
  final Status status;
  final DateTime? updatedAt;
  final Usage usage;
  final VariantSet? variantSet;
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
        createdAt: decodeDateTime(json["created_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : decodeDateTime(json["expires_at"]),
        id: json["id"] as String,
        inactiveAt: json["inactive_at"] == null
            ? null
            : decodeDateTime(json["inactive_at"]),
        merchant: json["merchant"] == null
            ? null
            : Merchant.fromJson(
                (json["merchant"] as Map).cast<String, Object?>(),
              ),
        price: json["price"] == null
            ? null
            : Price.fromJson(
                (json["price"] as Map).cast<String, Object?>(),
              ),
        presentation: json["presentation"] == null
            ? null
            : Presentation.fromJson(
                (json["presentation"] as Map).cast<String, Object?>(),
              ),
        product: json["product"] == null
            ? null
            : Product.fromJson(
                (json["product"] as Map).cast<String, Object?>(),
              ),
        quantity: Quantity.fromJson(
          (json["quantity"] as Map).cast<String, Object?>(),
        ),
        status: Status.fromJson(json["status"]),
        updatedAt: json["updated_at"] == null
            ? null
            : decodeDateTime(json["updated_at"]),
        usage: Usage.fromJson(
          (json["usage"] as Map).cast<String, Object?>(),
        ),
        variantSet: json["variant_set"] == null
            ? null
            : VariantSet.fromJson(
                (json["variant_set"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "allow_variants": encodeValue(allowVariants),
        "created_at": encodeValue(createdAt),
        if (expiresAt != null) "expires_at": encodeValue(expiresAt),
        "id": encodeValue(id),
        if (inactiveAt != null) "inactive_at": encodeValue(inactiveAt),
        if (merchant != null) "merchant": encodeValue(merchant),
        if (price != null) "price": encodeValue(price),
        if (presentation != null) "presentation": encodeValue(presentation),
        if (product != null) "product": encodeValue(product),
        "quantity": encodeValue(quantity),
        "status": encodeValue(status),
        if (updatedAt != null) "updated_at": encodeValue(updatedAt),
        "usage": encodeValue(usage),
        if (variantSet != null) "variant_set": encodeValue(variantSet),
      };
}
