part of '../../checkout.dart';

/// The order state exposed by a hosted checkout.
final class OrderStatus implements InttegroValue {
  final String value;
  const OrderStatus(this.value);
  factory OrderStatus.fromJson(Object? json) => OrderStatus(json as String);
  static const preparing = OrderStatus("preparing");
  static const requiresPayment = OrderStatus("requires_payment");
  static const completed = OrderStatus("completed");
  static const canceled = OrderStatus("canceled");
  static const expired = OrderStatus("expired");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OrderStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
