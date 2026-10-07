part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class DisactivatePaymentMethodRequest implements _InttegroValue {
  final String paymentMethodId;
  const DisactivatePaymentMethodRequest({required this.paymentMethodId});
  factory DisactivatePaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      DisactivatePaymentMethodRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}
