part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderShippingLineItem implements _InttegroValue {
  final String type;
  final OrderShippingLineItemShipping shipping;
  const OrderShippingLineItem({required this.type, required this.shipping});
  factory OrderShippingLineItem.fromJson(Map<String, Object?> json) =>
      OrderShippingLineItem(
        type: json["type"] as String,
        shipping: OrderShippingLineItemShipping.fromJson(
          (json["shipping"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "shipping": _encodeValue(shipping),
      };
}
