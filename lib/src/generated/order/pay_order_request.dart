part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PayOrderRequest implements _InttegroValue {
  final PaymentMethodDataInput? paymentMethodData;
  final String? paymentMethodId;
  final bool? paidOutOfBand;
  final String orderId;
  const PayOrderRequest({
    this.paymentMethodData,
    this.paymentMethodId,
    this.paidOutOfBand,
    required this.orderId,
  });
  factory PayOrderRequest.fromJson(Map<String, Object?> json) =>
      PayOrderRequest(
        paymentMethodData: json["payment_method_data"] == null
            ? null
            : PaymentMethodDataInput.fromJson(
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
          "payment_method_data": _encodeValue(paymentMethodData),
        if (paymentMethodId != null)
          "payment_method_id": _encodeValue(paymentMethodId),
        if (paidOutOfBand != null)
          "paid_out_of_band": _encodeValue(paidOutOfBand),
        "order_id": _encodeValue(orderId),
      };
}
