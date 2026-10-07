part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodPage implements _InttegroValue {
  final int number;
  final List<PaymentMethod> paymentMethods;
  final int size;
  const PaymentMethodPage({
    required this.number,
    required this.paymentMethods,
    required this.size,
  });
  factory PaymentMethodPage.fromJson(Map<String, Object?> json) =>
      PaymentMethodPage(
        number: (json["number"] as num).toInt(),
        paymentMethods: (json["payment_methods"] as List)
            .map(
              (item) =>
                  PaymentMethod.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "payment_methods": _encodeValue(paymentMethods),
        "size": _encodeValue(size),
      };
}
