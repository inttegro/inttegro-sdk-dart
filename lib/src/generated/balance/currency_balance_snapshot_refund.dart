part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class CurrencyBalanceSnapshotRefund implements _InttegroValue {
  final int amount;
  const CurrencyBalanceSnapshotRefund({required this.amount});
  factory CurrencyBalanceSnapshotRefund.fromJson(Map<String, Object?> json) =>
      CurrencyBalanceSnapshotRefund(amount: (json["amount"] as num).toInt());
  @override
  Map<String, Object?> toJson() => {"amount": _encodeValue(amount)};
}
