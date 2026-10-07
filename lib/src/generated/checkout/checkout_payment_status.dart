part of '../../../inttegro.dart';

/// A typed `CheckoutPaymentStatus` value used by the Inttegro API.
final class CheckoutPaymentStatus implements _InttegroValue {
  final String value;
  const CheckoutPaymentStatus(this.value);
  factory CheckoutPaymentStatus.fromJson(Object? json) =>
      CheckoutPaymentStatus(json as String);
  static const requiresAction = CheckoutPaymentStatus("requires_action");
  static const processing = CheckoutPaymentStatus("processing");
  static const succeeded = CheckoutPaymentStatus("succeeded");
  static const failed = CheckoutPaymentStatus("failed");
  static const cancelled = CheckoutPaymentStatus("cancelled");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is CheckoutPaymentStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
