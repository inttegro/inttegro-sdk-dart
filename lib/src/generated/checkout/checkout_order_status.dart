part of '../../../inttegro.dart';

/// A typed `CheckoutOrderStatus` value used by the Inttegro API.
final class CheckoutOrderStatus implements _InttegroValue {
  final String value;
  const CheckoutOrderStatus(this.value);
  factory CheckoutOrderStatus.fromJson(Object? json) =>
      CheckoutOrderStatus(json as String);
  static const preparing = CheckoutOrderStatus("preparing");
  static const requiresPayment = CheckoutOrderStatus("requires_payment");
  static const completed = CheckoutOrderStatus("completed");
  static const canceled = CheckoutOrderStatus("canceled");
  static const expired = CheckoutOrderStatus("expired");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is CheckoutOrderStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
