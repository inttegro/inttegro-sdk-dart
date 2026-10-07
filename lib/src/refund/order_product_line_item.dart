part of '../../refund.dart';

final class OrderProductLineItem extends OrderLineItem {
  @override
  final String id;
  final int quantity;
  final OrderLineItemProduct product;
  const OrderProductLineItem({
    required this.id,
    required this.quantity,
    required this.product,
  });

  factory OrderProductLineItem.fromJson(Map<String, Object?> json) {
    expectExactKeys(
      json,
      const {"id", "type", "quantity", "product"},
      "product refund order line item",
    );
    if (json["type"] != "product") {
      throw const FormatException("Invalid product refund order line item");
    }
    return OrderProductLineItem(
      id: json["id"] as String,
      quantity: (json["quantity"] as num).toInt(),
      product: OrderLineItemProduct.fromJson(
        (json["product"] as Map).cast<String, Object?>(),
      ),
    );
  }

  @override
  String get type => "product";

  @override
  Map<String, Object?> toJson() => {
        "id": id,
        "type": type,
        "quantity": quantity,
        "product": encodeValue(product),
      };
}
