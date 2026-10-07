part of '../../../inttegro.dart';

/// A typed `PaymentResultStatus` value used by the Inttegro API.
final class PaymentResultStatus implements _InttegroValue {
  final String value;
  const PaymentResultStatus(this.value);
  factory PaymentResultStatus.fromJson(Object? json) =>
      PaymentResultStatus(json as String);
  static const pending = PaymentResultStatus("pending");
  static const requiresConfirmation = PaymentResultStatus(
    "requires_confirmation",
  );
  static const processing = PaymentResultStatus("processing");
  static const succeeded = PaymentResultStatus("succeeded");
  static const failed = PaymentResultStatus("failed");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentResultStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
