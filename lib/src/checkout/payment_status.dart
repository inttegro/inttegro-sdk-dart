part of '../../checkout.dart';

/// The payment state exposed by a hosted checkout.
final class PaymentStatus implements InttegroValue {
  final String value;
  const PaymentStatus(this.value);
  factory PaymentStatus.fromJson(Object? json) => PaymentStatus(json as String);
  static const requiresAction = PaymentStatus("requires_action");
  static const processing = PaymentStatus("processing");
  static const succeeded = PaymentStatus("succeeded");
  static const failed = PaymentStatus("failed");
  static const cancelled = PaymentStatus("cancelled");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
