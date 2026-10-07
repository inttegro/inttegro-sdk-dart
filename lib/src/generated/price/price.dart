part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class Price implements _InttegroValue {
  final Currency currency;
  final int value;
  const Price({required this.currency, required this.value});
  factory Price.fromJson(Map<String, Object?> json) => Price(
        currency: Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": _encodeValue(currency),
        "value": _encodeValue(value),
      };
}
