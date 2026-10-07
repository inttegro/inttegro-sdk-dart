part of '../../order.dart';

/// A product line item attached to an order.
final class ProductLineItem implements InttegroValue {
  final String type;
  final ProductLineItemProduct product;
  const ProductLineItem({required this.type, required this.product});
  factory ProductLineItem.fromJson(Map<String, Object?> json) =>
      ProductLineItem(
        type: json["type"] as String,
        product: ProductLineItemProduct.fromJson(
          (json["product"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        "product": encodeValue(product),
      };
}
