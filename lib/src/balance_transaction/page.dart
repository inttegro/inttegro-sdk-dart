part of '../../balance_transaction.dart';

/// A page of balance transactions returned by a list operation.
///
/// Exposes [number], [size], and [transactions].
final class Page implements InttegroValue {
  final int number;
  final int size;
  final List<BalanceTransaction>? transactions;
  const Page({
    required this.number,
    required this.size,
    this.transactions,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
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
        "number": encodeValue(number),
        "size": encodeValue(size),
        if (transactions != null) "transactions": encodeValue(transactions),
      };
}
