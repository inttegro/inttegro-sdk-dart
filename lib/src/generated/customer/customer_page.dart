part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class CustomerPage implements _InttegroValue {
  final List<Customer> customers;
  final int number;
  final int size;
  const CustomerPage({
    required this.customers,
    required this.number,
    required this.size,
  });
  factory CustomerPage.fromJson(Map<String, Object?> json) => CustomerPage(
        customers: (json["customers"] as List)
            .map((item) =>
                Customer.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "customers": _encodeValue(customers),
        "number": _encodeValue(number),
        "size": _encodeValue(size),
      };
}
