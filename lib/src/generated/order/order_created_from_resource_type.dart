part of '../../../inttegro.dart';

/// A typed `OrderCreatedFromResourceType` value used by the Inttegro API.
final class OrderCreatedFromResourceType implements _InttegroValue {
  final String value;
  const OrderCreatedFromResourceType(this.value);
  factory OrderCreatedFromResourceType.fromJson(Object? json) =>
      OrderCreatedFromResourceType(json as String);
  static const purchaseIntent = OrderCreatedFromResourceType("purchase_intent");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OrderCreatedFromResourceType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
