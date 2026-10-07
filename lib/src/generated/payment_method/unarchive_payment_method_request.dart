part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UnarchivePaymentMethodRequest implements _InttegroValue {
  final String paymentMethodId;
  const UnarchivePaymentMethodRequest({required this.paymentMethodId});
  factory UnarchivePaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      UnarchivePaymentMethodRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}
