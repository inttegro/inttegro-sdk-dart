part of '../../../inttegro.dart';

/// A typed `PaymentAttemptStatus` value used by the Inttegro API.
final class PaymentAttemptStatus implements _InttegroValue {
  final String value;
  const PaymentAttemptStatus(this.value);
  factory PaymentAttemptStatus.fromJson(Object? json) =>
      PaymentAttemptStatus(json as String);
  static const initiated = PaymentAttemptStatus("initiated");
  static const executed = PaymentAttemptStatus("executed");
  static const succeeded = PaymentAttemptStatus("succeeded");
  static const canceled = PaymentAttemptStatus("canceled");
  static const expired = PaymentAttemptStatus("expired");
  static const failed = PaymentAttemptStatus("failed");
  static const unknown = PaymentAttemptStatus("unknown");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentAttemptStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
