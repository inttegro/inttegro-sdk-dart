part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class BalanceTransactionAllocationUse implements _InttegroValue {
  final String id;
  final BalanceTransactionAmount amount;
  const BalanceTransactionAllocationUse(
      {required this.id, required this.amount});
  factory BalanceTransactionAllocationUse.fromJson(
    Map<String, Object?> json,
  ) =>
      BalanceTransactionAllocationUse(
        id: json["id"] as String,
        amount: BalanceTransactionAmount.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "amount": _encodeValue(amount),
      };
}
