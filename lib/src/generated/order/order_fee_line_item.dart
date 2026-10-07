part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderFeeLineItem implements _InttegroValue {
  final String type;
  final OrderFeeLineItemFee fee;
  const OrderFeeLineItem({required this.type, required this.fee});
  factory OrderFeeLineItem.fromJson(Map<String, Object?> json) =>
      OrderFeeLineItem(
        type: json["type"] as String,
        fee: OrderFeeLineItemFee.fromJson(
          (json["fee"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "fee": _encodeValue(fee),
      };
}
