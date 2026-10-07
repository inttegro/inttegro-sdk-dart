part of '../../../inttegro.dart';

final class RefundOrderFeeLineItem extends RefundOrderLineItem {
  @override
  final String id;
  final RefundOrderLineItemAdjustment fee;
  const RefundOrderFeeLineItem({required this.id, required this.fee});

  factory RefundOrderFeeLineItem.fromJson(Map<String, Object?> json) {
    _expectExactKeys(
      json,
      const {"id", "type", "fee"},
      "fee refund order line item",
    );
    if (json["type"] != "fee") {
      throw const FormatException("Invalid fee refund order line item");
    }
    return RefundOrderFeeLineItem(
      id: json["id"] as String,
      fee: RefundOrderLineItemAdjustment.fromJson(
        (json["fee"] as Map).cast<String, Object?>(),
      ),
    );
  }

  @override
  String get type => "fee";

  @override
  Map<String, Object?> toJson() => {
        "id": id,
        "type": type,
        "fee": _encodeValue(fee),
      };
}
