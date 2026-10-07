part of '../../order.dart';

/// Parameters for paying an order.
///
/// Carries [paymentMethodData], [paymentMethodId], [paidOutOfBand], and
/// [orderId].
final class PayRequest implements InttegroValue {
  final inttegro_payment_method.DataInput? paymentMethodData;
  final String? paymentMethodId;
  final bool? paidOutOfBand;
  final String orderId;
  const PayRequest({
    this.paymentMethodData,
    this.paymentMethodId,
    this.paidOutOfBand,
    required this.orderId,
  });
  factory PayRequest.fromJson(Map<String, Object?> json) => PayRequest(
        paymentMethodData: json["payment_method_data"] == null
            ? null
            : inttegro_payment_method.DataInput.fromJson(
                (json["payment_method_data"] as Map).cast<String, Object?>(),
              ),
        paymentMethodId: json["payment_method_id"] == null
            ? null
            : json["payment_method_id"] as String,
        paidOutOfBand: json["paid_out_of_band"] == null
            ? null
            : json["paid_out_of_band"] as bool,
        orderId: json["order_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (paymentMethodData != null)
          "payment_method_data": encodeValue(paymentMethodData),
        if (paymentMethodId != null)
          "payment_method_id": encodeValue(paymentMethodId),
        if (paidOutOfBand != null)
          "paid_out_of_band": encodeValue(paidOutOfBand),
        "order_id": encodeValue(orderId),
      };
}
