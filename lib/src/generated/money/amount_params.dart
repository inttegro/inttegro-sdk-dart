part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class AmountParams implements _InttegroValue {
  final Currency currency;
  final int value;
  const AmountParams({required this.currency, required this.value});
  factory AmountParams.fromJson(Map<String, Object?> json) => AmountParams(
        currency: Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": _encodeValue(currency),
        "value": _encodeValue(value),
      };
}
