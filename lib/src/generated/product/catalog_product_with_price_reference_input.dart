part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CatalogProductWithPriceReferenceInput implements _InttegroValue {
  final String priceId;
  final String productId;
  final int quantity;
  const CatalogProductWithPriceReferenceInput({
    required this.priceId,
    required this.productId,
    required this.quantity,
  });
  factory CatalogProductWithPriceReferenceInput.fromJson(
    Map<String, Object?> json,
  ) =>
      CatalogProductWithPriceReferenceInput(
        priceId: json["price_id"] as String,
        productId: json["product_id"] as String,
        quantity: (json["quantity"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "price_id": _encodeValue(priceId),
        "product_id": _encodeValue(productId),
        "quantity": _encodeValue(quantity),
      };
}
