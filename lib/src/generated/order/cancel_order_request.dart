part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CancelOrderRequest implements _InttegroValue {
  final String? reason;
  final bool? executeRefund;
  final String orderId;
  const CancelOrderRequest({
    this.reason,
    this.executeRefund,
    required this.orderId,
  });
  factory CancelOrderRequest.fromJson(Map<String, Object?> json) =>
      CancelOrderRequest(
        reason: json["reason"] == null ? null : json["reason"] as String,
        executeRefund: json["execute_refund"] == null
            ? null
            : json["execute_refund"] as bool,
        orderId: json["order_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (reason != null) "reason": _encodeValue(reason),
        if (executeRefund != null)
          "execute_refund": _encodeValue(executeRefund),
        "order_id": _encodeValue(orderId),
      };
}
