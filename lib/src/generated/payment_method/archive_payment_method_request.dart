part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ArchivePaymentMethodRequest implements _InttegroValue {
  final String paymentMethodId;
  const ArchivePaymentMethodRequest({required this.paymentMethodId});
  factory ArchivePaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      ArchivePaymentMethodRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}
