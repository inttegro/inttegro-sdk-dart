part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FeeLineItemInput implements _InttegroValue {
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
        "type": _encodeValue(type),
        "fee": _encodeValue(fee),
      };
}
