part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodDeletion implements _InttegroValue {
  final bool deleted;
  final String paymentMethodId;
  const PaymentMethodDeletion({
    required this.deleted,
    required this.paymentMethodId,
  });
  factory PaymentMethodDeletion.fromJson(Map<String, Object?> json) =>
      PaymentMethodDeletion(
        deleted: json["deleted"] as bool,
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "deleted": _encodeValue(deleted),
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}
