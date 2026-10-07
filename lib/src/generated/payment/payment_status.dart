part of '../../../inttegro.dart';

/// A typed `PaymentStatus` value used by the Inttegro API.
final class PaymentStatus implements _InttegroValue {
  final String value;
  const PaymentStatus(this.value);
  factory PaymentStatus.fromJson(Object? json) => PaymentStatus(json as String);
  static const initiated = PaymentStatus("initiated");
  static const requiresAction = PaymentStatus("requires_action");
  static const overdue = PaymentStatus("overdue");
  static const executed = PaymentStatus("executed");
  static const paid = PaymentStatus("paid");
  static const canceled = PaymentStatus("canceled");
  static const expired = PaymentStatus("expired");
  static const failed = PaymentStatus("failed");
  static const unknown = PaymentStatus("unknown");
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
