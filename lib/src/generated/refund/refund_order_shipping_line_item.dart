part of '../../../inttegro.dart';

final class RefundOrderShippingLineItem extends RefundOrderLineItem {
  @override
  final String id;
  final RefundOrderLineItemAdjustment shipping;
  const RefundOrderShippingLineItem({required this.id, required this.shipping});

  factory RefundOrderShippingLineItem.fromJson(Map<String, Object?> json) {
    _expectExactKeys(
      json,
      const {"id", "type", "shipping"},
      "shipping refund order line item",
    );
    if (json["type"] != "shipping") {
      throw const FormatException("Invalid shipping refund order line item");
    }
    return RefundOrderShippingLineItem(
      id: json["id"] as String,
      shipping: RefundOrderLineItemAdjustment.fromJson(
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
        "shipping": _encodeValue(shipping),
      };
}
