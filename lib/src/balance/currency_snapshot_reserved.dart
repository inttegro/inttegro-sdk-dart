part of '../../balance.dart';

/// The amount reserved within a currency balance snapshot.
///
/// Exposes [amount].
final class CurrencySnapshotReserved implements InttegroValue {
  final int amount;
  const CurrencySnapshotReserved({required this.amount});
  factory CurrencySnapshotReserved.fromJson(Map<String, Object?> json) =>
      CurrencySnapshotReserved(amount: (json["amount"] as num).toInt());
  @override
  Map<String, Object?> toJson() => {"amount": encodeValue(amount)};
}
