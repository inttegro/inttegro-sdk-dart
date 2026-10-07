part of '../../refund.dart';

/// Create line item fields accepted by the refund API.
///
/// Carries [reason], [reasonDetails], [orderLineItemId], and [refundAmount].
final class CreateLineItemInput implements InttegroValue {
  final Reason? reason;
  final String? reasonDetails;
  final String orderLineItemId;
  final inttegro_money.AmountParams refundAmount;
  const CreateLineItemInput({
    this.reason,
    this.reasonDetails,
    required this.orderLineItemId,
    required this.refundAmount,
  });
  factory CreateLineItemInput.fromJson(Map<String, Object?> json) =>
      CreateLineItemInput(
        reason: json["reason"] == null ? null : Reason.fromJson(json["reason"]),
        reasonDetails: json["reason_details"] == null
            ? null
            : json["reason_details"] as String,
        orderLineItemId: json["order_line_item_id"] as String,
        refundAmount: inttegro_money.AmountParams.fromJson(
          (json["refund_amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (reason != null) "reason": encodeValue(reason),
        if (reasonDetails != null) "reason_details": encodeValue(reasonDetails),
        "order_line_item_id": encodeValue(orderLineItemId),
        "refund_amount": encodeValue(refundAmount),
      };
}
