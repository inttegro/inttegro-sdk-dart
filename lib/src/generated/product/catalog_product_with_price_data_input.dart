part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CatalogProductWithPriceDataInput implements _InttegroValue {
  final PriceParams price;
  final String productId;
  final int quantity;
  const CatalogProductWithPriceDataInput({
    required this.price,
    required this.productId,
    required this.quantity,
  });
  factory CatalogProductWithPriceDataInput.fromJson(
    Map<String, Object?> json,
  ) =>
      CatalogProductWithPriceDataInput(
        price: PriceParams.fromJson(
            (json["price"] as Map).cast<String, Object?>()),
        productId: json["product_id"] as String,
        quantity: (json["quantity"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "price": _encodeValue(price),
        "product_id": _encodeValue(productId),
        "quantity": _encodeValue(quantity),
      };
}
