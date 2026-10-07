part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class CurrencyBalanceSnapshotReserved implements _InttegroValue {
  final int amount;
  const CurrencyBalanceSnapshotReserved({required this.amount});
  factory CurrencyBalanceSnapshotReserved.fromJson(Map<String, Object?> json) =>
      CurrencyBalanceSnapshotReserved(amount: (json["amount"] as num).toInt());
  @override
  Map<String, Object?> toJson() => {"amount": _encodeValue(amount)};
}
