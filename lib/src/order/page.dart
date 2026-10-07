part of '../../order.dart';

/// A page of orders returned by a list operation.
///
/// Exposes [number], [size], and [orders].
final class Page implements InttegroValue {
  final int number;
  final int size;
  final List<Order> orders;
  const Page({
    required this.number,
    required this.size,
    required this.orders,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        orders: (json["orders"] as List)
            .map(
              (item) => Order.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": encodeValue(number),
        "size": encodeValue(size),
        "orders": encodeValue(orders),
      };
}
