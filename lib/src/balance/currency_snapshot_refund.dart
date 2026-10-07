part of '../../balance.dart';

/// The amount in a currency balance snapshot associated with refunds.
///
/// Exposes [amount].
final class CurrencySnapshotRefund implements InttegroValue {
  final int amount;
  const CurrencySnapshotRefund({required this.amount});
  factory CurrencySnapshotRefund.fromJson(Map<String, Object?> json) =>
      CurrencySnapshotRefund(amount: (json["amount"] as num).toInt());
  @override
  Map<String, Object?> toJson() => {"amount": encodeValue(amount)};
}
