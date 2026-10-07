part of '../../refund.dart';

/// The merchant-supplied reason for creating a [Refund].
final class Reason implements InttegroValue {
  final String value;
  const Reason(this.value);
  factory Reason.fromJson(Object? json) => Reason(json as String);
  static const requestedByCustomer = Reason("requested_by_customer");
  static const duplicate = Reason("duplicate");
  static const fraudulent = Reason("fraudulent");
  static const orderCanceled = Reason("order_canceled");
  static const itemReturned = Reason("item_returned");
  static const itemDamaged = Reason("item_damaged");
  static const itemNotReceived = Reason("item_not_received");
  static const itemNotAsDescribed = Reason("item_not_as_described");
  static const custom = Reason("custom");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Reason && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
