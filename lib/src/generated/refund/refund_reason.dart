part of '../../../inttegro.dart';

/// A typed `RefundReason` value used by the Inttegro API.
final class RefundReason implements _InttegroValue {
  final String value;
  const RefundReason(this.value);
  factory RefundReason.fromJson(Object? json) => RefundReason(json as String);
  static const requestedByCustomer = RefundReason("requested_by_customer");
  static const duplicate = RefundReason("duplicate");
  static const fraudulent = RefundReason("fraudulent");
  static const orderCanceled = RefundReason("order_canceled");
  static const itemReturned = RefundReason("item_returned");
  static const itemDamaged = RefundReason("item_damaged");
  static const itemNotReceived = RefundReason("item_not_received");
  static const itemNotAsDescribed = RefundReason("item_not_as_described");
  static const custom = RefundReason("custom");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is RefundReason && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
