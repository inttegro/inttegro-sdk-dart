part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialAccountPage implements _InttegroValue {
  final List<FinancialAccount> accounts;
  final int number;
  final int size;
  const FinancialAccountPage({
    required this.accounts,
    required this.number,
    required this.size,
  });
  factory FinancialAccountPage.fromJson(Map<String, Object?> json) =>
      FinancialAccountPage(
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
        "accounts": _encodeValue(accounts),
        "number": _encodeValue(number),
        "size": _encodeValue(size),
      };
}
