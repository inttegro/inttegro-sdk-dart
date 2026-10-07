part of '../../refund.dart';

final class OrderShippingLineItem extends OrderLineItem {
  @override
  final String id;
  final OrderLineItemAdjustment shipping;
  const OrderShippingLineItem({required this.id, required this.shipping});

  factory OrderShippingLineItem.fromJson(Map<String, Object?> json) {
    expectExactKeys(
      json,
      const {"id", "type", "shipping"},
      "shipping refund order line item",
    );
    if (json["type"] != "shipping") {
      throw const FormatException("Invalid shipping refund order line item");
    }
    return OrderShippingLineItem(
      id: json["id"] as String,
      shipping: OrderLineItemAdjustment.fromJson(
        (json["shipping"] as Map).cast<String, Object?>(),
      ),
    );
  }

  @override
  String get type => "shipping";

  @override
  Map<String, Object?> toJson() => {
        "id": id,
        "type": type,
        "shipping": encodeValue(shipping),
      };
}
