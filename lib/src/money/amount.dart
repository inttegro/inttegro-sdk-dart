part of '../../money.dart';

/// An integer monetary value denominated in [currency].
final class Amount implements InttegroValue {
  final Currency currency;
  final int value;
  const Amount({required this.currency, required this.value});
  factory Amount.fromJson(Map<String, Object?> json) => Amount(
        currency: Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": encodeValue(currency),
        "value": encodeValue(value),
      };
}
