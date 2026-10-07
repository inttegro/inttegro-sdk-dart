part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ActivatePaymentMethodRequest implements _InttegroValue {
  final String paymentMethodId;
  const ActivatePaymentMethodRequest({required this.paymentMethodId});
  factory ActivatePaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      ActivatePaymentMethodRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}
