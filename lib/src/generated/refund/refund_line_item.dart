part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class RefundLineItem implements _InttegroValue {
  final String id;
  @Deprecated('Use orderLineItem.id.')
  final String orderLineItemId;
  final RefundOrderLineItem? orderLineItem;
  final Amount originalAmountPaid;
  final RefundReason? reason;
  final String? reasonDetails;
  final Amount refundAmount;
  const RefundLineItem({
    required this.id,
    required this.orderLineItemId,
    this.orderLineItem,
    required this.originalAmountPaid,
    this.reason,
    this.reasonDetails,
    required this.refundAmount,
  });
  factory RefundLineItem.fromJson(Map<String, Object?> json) => RefundLineItem(
        id: json["id"] as String,
        orderLineItemId: json["order_line_item_id"] as String,
        orderLineItem: json["order_line_item"] == null
            ? null
            : RefundOrderLineItem.fromJson(json["order_line_item"]),
        originalAmountPaid: Amount.fromJson(
          (json["original_amount_paid"] as Map).cast<String, Object?>(),
        ),
        reason: json["reason"] == null
            ? null
            : RefundReason.fromJson(json["reason"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        refundAmount: Amount.fromJson(
          (json["refund_amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "order_line_item_id": _encodeValue(orderLineItemId),
        if (orderLineItem != null)
          "order_line_item": _encodeValue(orderLineItem),
        "original_amount_paid": _encodeValue(originalAmountPaid),
        if (reason != null) "reason": _encodeValue(reason),
        if (reasonDetails != null)
          "reason_details": _encodeValue(reasonDetails),
        "refund_amount": _encodeValue(refundAmount),
      };
}
