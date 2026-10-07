part of '../../order.dart';

/// Fee line item fields accepted by the order API.
///
/// Carries [type] and [fee].
final class FeeLineItemInput implements InttegroValue {
  final LineItemType type;
  final FeeDetailsInput fee;
  const FeeLineItemInput({required this.type, required this.fee});
  factory FeeLineItemInput.fromJson(Map<String, Object?> json) =>
      FeeLineItemInput(
        type: LineItemType.fromJson(json["type"]),
        fee: FeeDetailsInput.fromJson(
          (json["fee"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        "fee": encodeValue(fee),
      };
}
