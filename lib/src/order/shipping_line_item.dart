part of '../../order.dart';

/// A shipping-fee line item attached to an order.
final class ShippingLineItem implements InttegroValue {
  final String type;
  final ShippingLineItemShipping shipping;
  const ShippingLineItem({required this.type, required this.shipping});
  factory ShippingLineItem.fromJson(Map<String, Object?> json) =>
      ShippingLineItem(
        type: json["type"] as String,
        shipping: ShippingLineItemShipping.fromJson(
          (json["shipping"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        "shipping": encodeValue(shipping),
      };
}
