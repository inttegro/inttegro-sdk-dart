part of '../../customer.dart';

/// A page of customers returned by a list operation.
///
/// Exposes [customers], [number], and [size].
final class Page implements InttegroValue {
  final List<Customer> customers;
  final int number;
  final int size;
  const Page({
    required this.customers,
    required this.number,
    required this.size,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
        customers: (json["customers"] as List)
            .map((item) =>
                Customer.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "customers": encodeValue(customers),
        "number": encodeValue(number),
        "size": encodeValue(size),
      };
}
