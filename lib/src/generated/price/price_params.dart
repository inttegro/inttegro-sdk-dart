part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PriceParams implements _InttegroValue {
  final Currency currency;
  final int value;
  const PriceParams({required this.currency, required this.value});
  factory PriceParams.fromJson(Map<String, Object?> json) => PriceParams(
        currency: Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": _encodeValue(currency),
        "value": _encodeValue(value),
      };
}
