part of '../../payout.dart';

/// Whether a balance-transaction contribution remains reserved, completed, or released.
final class BalanceTransactionStatus implements InttegroValue {
  final String value;
  const BalanceTransactionStatus(this.value);
  factory BalanceTransactionStatus.fromJson(Object? json) =>
      BalanceTransactionStatus(json as String);
  static const reserved = BalanceTransactionStatus("reserved");
  static const completed = BalanceTransactionStatus("completed");
  static const released = BalanceTransactionStatus("released");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is BalanceTransactionStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
