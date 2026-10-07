part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ProductLineItemInput implements _InttegroValue {
  final LineItemType type;
  final ProductLineItemInputProduct product;
  const ProductLineItemInput({required this.type, required this.product});
  factory ProductLineItemInput.fromJson(Map<String, Object?> json) =>
      ProductLineItemInput(
        type: LineItemType.fromJson(json["type"]),
        product: ProductLineItemInputProduct.fromJson(json["product"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "product": _encodeValue(product),
      };
}
