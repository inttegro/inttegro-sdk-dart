part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class BalanceTransactionAmount implements _InttegroValue {
  final String currency;
  final int value;
  const BalanceTransactionAmount({required this.currency, required this.value});
  factory BalanceTransactionAmount.fromJson(Map<String, Object?> json) =>
      BalanceTransactionAmount(
        currency: json["currency"] as String,
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": _encodeValue(currency),
        "value": _encodeValue(value),
      };
}
