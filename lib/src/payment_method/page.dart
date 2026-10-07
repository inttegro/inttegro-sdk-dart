part of '../../payment_method.dart';

/// A page of payment methods returned by a list operation.
///
/// Exposes [number], [paymentMethods], and [size].
final class Page implements InttegroValue {
  final int number;
  final List<PaymentMethod> paymentMethods;
  final int size;
  const Page({
    required this.number,
    required this.paymentMethods,
    required this.size,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
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
        "number": encodeValue(number),
        "payment_methods": encodeValue(paymentMethods),
        "size": encodeValue(size),
      };
}
