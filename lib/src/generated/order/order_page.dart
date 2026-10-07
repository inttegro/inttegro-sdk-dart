part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderPage implements _InttegroValue {
  final int number;
  final int size;
  final List<Order> orders;
  const OrderPage({
    required this.number,
    required this.size,
    required this.orders,
  });
  factory OrderPage.fromJson(Map<String, Object?> json) => OrderPage(
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
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "orders": _encodeValue(orders),
      };
}
