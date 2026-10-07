part of '../../../inttegro.dart';

/// A typed `BalanceTransactionAllocationType` value used by the Inttegro API.
final class BalanceTransactionAllocationType implements _InttegroValue {
  final String value;
  const BalanceTransactionAllocationType(this.value);
  factory BalanceTransactionAllocationType.fromJson(Object? json) =>
      BalanceTransactionAllocationType(json as String);
  static const payout = BalanceTransactionAllocationType("payout");
  static const refund = BalanceTransactionAllocationType("refund");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is BalanceTransactionAllocationType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
