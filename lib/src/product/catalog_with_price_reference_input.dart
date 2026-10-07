part of '../../product.dart';

/// Catalog with price reference fields accepted by the product API.
///
/// Carries [priceId], [productId], and [quantity].
final class CatalogWithPriceReferenceInput implements InttegroValue {
  final String priceId;
  final String productId;
  final int quantity;
  const CatalogWithPriceReferenceInput({
    required this.priceId,
    required this.productId,
    required this.quantity,
  });
  factory CatalogWithPriceReferenceInput.fromJson(
    Map<String, Object?> json,
  ) =>
      CatalogWithPriceReferenceInput(
        priceId: json["price_id"] as String,
        productId: json["product_id"] as String,
        quantity: (json["quantity"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "price_id": encodeValue(priceId),
        "product_id": encodeValue(productId),
        "quantity": encodeValue(quantity),
      };
}
