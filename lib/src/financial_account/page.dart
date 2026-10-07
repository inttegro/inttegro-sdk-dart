part of '../../financial_account.dart';

/// A page of financial accounts returned by a list operation.
///
/// Exposes [accounts], [number], and [size].
final class Page implements InttegroValue {
  final List<FinancialAccount> accounts;
  final int number;
  final int size;
  const Page({
    required this.accounts,
    required this.number,
    required this.size,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
        accounts: (json["accounts"] as List)
            .map(
              (item) => FinancialAccount.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "accounts": encodeValue(accounts),
        "number": encodeValue(number),
        "size": encodeValue(size),
      };
}
