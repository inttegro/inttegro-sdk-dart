part of '../../price.dart';

/// An integer catalog price denominated in [currency].
final class Price implements InttegroValue {
  final inttegro_money.Currency currency;
  final int value;
  const Price({required this.currency, required this.value});
  factory Price.fromJson(Map<String, Object?> json) => Price(
        currency: inttegro_money.Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": encodeValue(currency),
        "value": encodeValue(value),
      };
}
