part of '../../order.dart';

/// Identifies the order to cancel and supplies any cancellation options.
///
/// Carries [reason], [executeRefund], and [orderId].
final class CancelRequest implements InttegroValue {
  final String? reason;
  final bool? executeRefund;
  final String orderId;
  const CancelRequest({
    this.reason,
    this.executeRefund,
    required this.orderId,
  });
  factory CancelRequest.fromJson(Map<String, Object?> json) => CancelRequest(
        reason: json["reason"] == null ? null : json["reason"] as String,
        executeRefund: json["execute_refund"] == null
            ? null
            : json["execute_refund"] as bool,
        orderId: json["order_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (reason != null) "reason": encodeValue(reason),
        if (executeRefund != null) "execute_refund": encodeValue(executeRefund),
        "order_id": encodeValue(orderId),
      };
}
