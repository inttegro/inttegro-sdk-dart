part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class BalanceTransactionPage implements _InttegroValue {
  final int number;
  final int size;
  final List<BalanceTransaction>? transactions;
  const BalanceTransactionPage({
    required this.number,
    required this.size,
    this.transactions,
  });
  factory BalanceTransactionPage.fromJson(Map<String, Object?> json) =>
      BalanceTransactionPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        transactions: json["transactions"] == null
            ? null
            : (json["transactions"] as List)
                .map(
                  (item) => BalanceTransaction.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        if (transactions != null) "transactions": _encodeValue(transactions),
      };
}
