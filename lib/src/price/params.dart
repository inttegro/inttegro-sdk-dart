part of '../../price.dart';

/// A currency and integer amount supplied for a price.
final class Params implements InttegroValue {
  final inttegro_money.Currency currency;
  final int value;
  const Params({required this.currency, required this.value});
  factory Params.fromJson(Map<String, Object?> json) => Params(
        currency: inttegro_money.Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": encodeValue(currency),
        "value": encodeValue(value),
      };
}
