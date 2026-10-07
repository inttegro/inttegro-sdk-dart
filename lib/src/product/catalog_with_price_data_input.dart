part of '../../product.dart';

/// Catalog with price data fields accepted by the product API.
///
/// Carries [price], [productId], and [quantity].
final class CatalogWithPriceDataInput implements InttegroValue {
  final inttegro_price.Params price;
  final String productId;
  final int quantity;
  const CatalogWithPriceDataInput({
    required this.price,
    required this.productId,
    required this.quantity,
  });
  factory CatalogWithPriceDataInput.fromJson(
    Map<String, Object?> json,
  ) =>
      CatalogWithPriceDataInput(
        price: inttegro_price.Params.fromJson(
            (json["price"] as Map).cast<String, Object?>()),
        productId: json["product_id"] as String,
        quantity: (json["quantity"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "price": encodeValue(price),
        "product_id": encodeValue(productId),
        "quantity": encodeValue(quantity),
      };
}
