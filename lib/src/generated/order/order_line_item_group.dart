part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderLineItemGroup implements _InttegroValue {
  final List<OrderLineItem> lineItems;
  final Amount total;
  const OrderLineItemGroup({required this.lineItems, required this.total});
  factory OrderLineItemGroup.fromJson(Map<String, Object?> json) =>
      OrderLineItemGroup(
        lineItems: (json["line_items"] as List)
            .map((item) => OrderLineItem.fromJson(item))
            .toList(),
        total: Amount.fromJson((json["total"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        "line_items": _encodeValue(lineItems),
        "total": _encodeValue(total),
      };
}
