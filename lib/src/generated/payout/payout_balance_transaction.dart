part of '../../../inttegro.dart';

/// A sparse view of one balance transaction's contribution to a payout.
final class PayoutBalanceTransaction implements _InttegroValue {
  final Amount allocatedAmount;
  final Amount amount;
  final String id;
  const PayoutBalanceTransaction({
    required this.allocatedAmount,
    required this.amount,
    required this.id,
  });
  factory PayoutBalanceTransaction.fromJson(Map<String, Object?> json) =>
      PayoutBalanceTransaction(
        allocatedAmount: Amount.fromJson(
          (json["allocated_amount"] as Map).cast<String, Object?>(),
        ),
        amount: Amount.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "allocated_amount": _encodeValue(allocatedAmount),
        "amount": _encodeValue(amount),
        "id": _encodeValue(id),
      };
}
