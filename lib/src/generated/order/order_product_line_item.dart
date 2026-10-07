part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderProductLineItem implements _InttegroValue {
  final String type;
  final OrderProductLineItemProduct product;
  const OrderProductLineItem({required this.type, required this.product});
  factory OrderProductLineItem.fromJson(Map<String, Object?> json) =>
      OrderProductLineItem(
        type: json["type"] as String,
        product: OrderProductLineItemProduct.fromJson(
          (json["product"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "product": _encodeValue(product),
      };
}
