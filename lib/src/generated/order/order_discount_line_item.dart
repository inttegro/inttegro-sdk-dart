part of '../../../inttegro.dart';

/// Typed discount line item returned by an order.
final class OrderDiscountLineItem implements _InttegroValue {
  final String type;
  final OrderDiscount discount;
  const OrderDiscountLineItem({required this.type, required this.discount});
  factory OrderDiscountLineItem.fromJson(Map<String, Object?> json) =>
      OrderDiscountLineItem(
        type: json["type"] as String,
        discount: OrderDiscount.fromJson(
          (json["discount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "discount": _encodeValue(discount),
      };
}
