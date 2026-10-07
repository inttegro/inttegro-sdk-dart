part of '../../../inttegro.dart';

final class RefundOrderProductLineItem extends RefundOrderLineItem {
  @override
  final String id;
  final int quantity;
  final RefundOrderLineItemProduct product;
  const RefundOrderProductLineItem({
    required this.id,
    required this.quantity,
    required this.product,
  });

  factory RefundOrderProductLineItem.fromJson(Map<String, Object?> json) {
    _expectExactKeys(
      json,
      const {"id", "type", "quantity", "product"},
      "product refund order line item",
    );
    if (json["type"] != "product") {
      throw const FormatException("Invalid product refund order line item");
    }
    return RefundOrderProductLineItem(
      id: json["id"] as String,
      quantity: (json["quantity"] as num).toInt(),
      product: RefundOrderLineItemProduct.fromJson(
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
        "product": _encodeValue(product),
      };
}
