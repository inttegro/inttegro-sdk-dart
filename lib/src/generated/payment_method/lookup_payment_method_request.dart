part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupPaymentMethodRequest implements _InttegroValue {
  final String paymentMethodId;
  const LookupPaymentMethodRequest({required this.paymentMethodId});
  factory LookupPaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      LookupPaymentMethodRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}
