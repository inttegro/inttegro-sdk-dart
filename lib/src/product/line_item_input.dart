part of '../../product.dart';

/// Line item fields accepted by the product API.
///
/// Carries [type] and [product].
final class LineItemInput implements InttegroValue {
  final inttegro_order.LineItemType type;
  final LineItemProduct product;
  const LineItemInput({required this.type, required this.product});
  factory LineItemInput.fromJson(Map<String, Object?> json) => LineItemInput(
        type: inttegro_order.LineItemType.fromJson(json["type"]),
        product: LineItemProduct.fromJson(json["product"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        "product": encodeValue(product),
      };
}
