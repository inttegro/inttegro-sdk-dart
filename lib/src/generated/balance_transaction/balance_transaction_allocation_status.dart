part of '../../../inttegro.dart';

/// A typed caller-visible allocation status.
final class BalanceTransactionAllocationStatus implements _InttegroValue {
  final String value;
  const BalanceTransactionAllocationStatus(this.value);
  factory BalanceTransactionAllocationStatus.fromJson(Object? json) =>
      BalanceTransactionAllocationStatus(json as String);
  static const pending = BalanceTransactionAllocationStatus("pending");
  static const completed = BalanceTransactionAllocationStatus("completed");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is BalanceTransactionAllocationStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
