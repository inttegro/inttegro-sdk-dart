part of '../../../inttegro.dart';

/// A typed `BalanceTransactionType` value used by the Inttegro API.
final class BalanceTransactionType implements _InttegroValue {
  final String value;
  const BalanceTransactionType(this.value);
  factory BalanceTransactionType.fromJson(Object? json) =>
      BalanceTransactionType(json as String);
  static const payment = BalanceTransactionType("payment");
  static const refund = BalanceTransactionType("refund");
  static const payout = BalanceTransactionType("payout");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is BalanceTransactionType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
