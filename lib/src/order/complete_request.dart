part of '../../order.dart';

/// Parameters for marking an order complete.
///
/// Carries [paidOutOfBand] and [orderId].
final class CompleteRequest implements InttegroValue {
  final bool? paidOutOfBand;
  final String orderId;
  const CompleteRequest({this.paidOutOfBand, required this.orderId});
  factory CompleteRequest.fromJson(Map<String, Object?> json) =>
      CompleteRequest(
        paidOutOfBand: json["paid_out_of_band"] == null
            ? null
            : json["paid_out_of_band"] as bool,
        orderId: json["order_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (paidOutOfBand != null)
          "paid_out_of_band": encodeValue(paidOutOfBand),
        "order_id": encodeValue(orderId),
      };
}
