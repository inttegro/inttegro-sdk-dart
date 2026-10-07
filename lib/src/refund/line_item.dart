part of '../../refund.dart';

/// One refunded order line item and the amount and reason applied to it.
///
/// Exposes [id], [orderLineItemId], [orderLineItem], and [originalAmountPaid],
/// among other contract fields.
final class LineItem implements InttegroValue {
  final String id;
  @Deprecated('Use orderLineItem.id.')
  final String orderLineItemId;
  final OrderLineItem? orderLineItem;
  final inttegro_money.Amount originalAmountPaid;
  final Reason? reason;
  final String? reasonDetails;
  final inttegro_money.Amount refundAmount;
  const LineItem({
    required this.id,
    required this.orderLineItemId,
    this.orderLineItem,
    required this.originalAmountPaid,
    this.reason,
    this.reasonDetails,
    required this.refundAmount,
  });
  factory LineItem.fromJson(Map<String, Object?> json) => LineItem(
        id: json["id"] as String,
        orderLineItemId: json["order_line_item_id"] as String,
        orderLineItem: json["order_line_item"] == null
            ? null
            : OrderLineItem.fromJson(json["order_line_item"]),
        originalAmountPaid: inttegro_money.Amount.fromJson(
          (json["original_amount_paid"] as Map).cast<String, Object?>(),
        ),
        reason: json["reason"] == null ? null : Reason.fromJson(json["reason"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        refundAmount: inttegro_money.Amount.fromJson(
          (json["refund_amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "order_line_item_id": encodeValue(orderLineItemId),
        if (orderLineItem != null)
          "order_line_item": encodeValue(orderLineItem),
        "original_amount_paid": encodeValue(originalAmountPaid),
        if (reason != null) "reason": encodeValue(reason),
        if (reasonDetails != null) "reason_details": encodeValue(reasonDetails),
        "refund_amount": encodeValue(refundAmount),
      };
}
