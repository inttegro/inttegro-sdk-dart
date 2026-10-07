part of '../../refund.dart';

final class OrderFeeLineItem extends OrderLineItem {
  @override
  final String id;
  final OrderLineItemAdjustment fee;
  const OrderFeeLineItem({required this.id, required this.fee});

  factory OrderFeeLineItem.fromJson(Map<String, Object?> json) {
    expectExactKeys(
      json,
      const {"id", "type", "fee"},
      "fee refund order line item",
    );
    if (json["type"] != "fee") {
      throw const FormatException("Invalid fee refund order line item");
    }
    return OrderFeeLineItem(
      id: json["id"] as String,
      fee: OrderLineItemAdjustment.fromJson(
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
        "fee": encodeValue(fee),
      };
}
