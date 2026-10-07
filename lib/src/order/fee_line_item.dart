part of '../../order.dart';

/// A fee line item attached to an order.
final class FeeLineItem implements InttegroValue {
  final String type;
  final FeeLineItemFee fee;
  const FeeLineItem({required this.type, required this.fee});
  factory FeeLineItem.fromJson(Map<String, Object?> json) => FeeLineItem(
        type: json["type"] as String,
        fee: FeeLineItemFee.fromJson(
          (json["fee"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        "fee": encodeValue(fee),
      };
}
