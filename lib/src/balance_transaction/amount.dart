part of '../../balance_transaction.dart';

/// A balance-transaction amount and its currency.
///
/// Exposes [currency] and [value].
final class Amount implements InttegroValue {
  final String currency;
  final int value;
  const Amount({required this.currency, required this.value});
  factory Amount.fromJson(Map<String, Object?> json) => Amount(
        currency: json["currency"] as String,
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": encodeValue(currency),
        "value": encodeValue(value),
      };
}
