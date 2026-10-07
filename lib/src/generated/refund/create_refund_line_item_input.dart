part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateRefundLineItemInput implements _InttegroValue {
  final RefundReason? reason;
  final String? reasonDetails;
  final String orderLineItemId;
  final AmountParams refundAmount;
  const CreateRefundLineItemInput({
    this.reason,
    this.reasonDetails,
    required this.orderLineItemId,
    required this.refundAmount,
  });
  factory CreateRefundLineItemInput.fromJson(Map<String, Object?> json) =>
      CreateRefundLineItemInput(
        reason: json["reason"] == null
            ? null
            : RefundReason.fromJson(json["reason"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        orderLineItemId: json["order_line_item_id"] as String,
        refundAmount: AmountParams.fromJson(
          (json["refund_amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (reason != null) "reason": _encodeValue(reason),
        if (reasonDetails != null)
          "reason_details": _encodeValue(reasonDetails),
        "order_line_item_id": _encodeValue(orderLineItemId),
        "refund_amount": _encodeValue(refundAmount),
      };
}
