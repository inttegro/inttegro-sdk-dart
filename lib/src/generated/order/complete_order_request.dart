part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CompleteOrderRequest implements _InttegroValue {
  final bool? paidOutOfBand;
  final String orderId;
  const CompleteOrderRequest({this.paidOutOfBand, required this.orderId});
  factory CompleteOrderRequest.fromJson(Map<String, Object?> json) =>
      CompleteOrderRequest(
        paidOutOfBand: json["paid_out_of_band"] == null
            ? null
            : json["paid_out_of_band"] as bool,
        orderId: json["order_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (paidOutOfBand != null)
          "paid_out_of_band": _encodeValue(paidOutOfBand),
        "order_id": _encodeValue(orderId),
      };
}
