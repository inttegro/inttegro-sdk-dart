part of '../../payout.dart';

/// A sparse view of one balance transaction's contribution to a payout.
final class BalanceTransaction implements InttegroValue {
  final inttegro_money.Amount allocatedAmount;
  final inttegro_money.Amount amount;
  final String id;
  final BalanceTransactionStatus status;
  const BalanceTransaction({
    required this.allocatedAmount,
    required this.amount,
    required this.id,
    required this.status,
  });
  factory BalanceTransaction.fromJson(Map<String, Object?> json) =>
      BalanceTransaction(
        allocatedAmount: inttegro_money.Amount.fromJson(
          (json["allocated_amount"] as Map).cast<String, Object?>(),
        ),
        amount: inttegro_money.Amount.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
        id: json["id"] as String,
        status: BalanceTransactionStatus.fromJson(json["status"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "allocated_amount": encodeValue(allocatedAmount),
        "amount": encodeValue(amount),
        "id": encodeValue(id),
        "status": encodeValue(status),
      };
}
