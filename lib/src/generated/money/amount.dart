part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class Amount implements _InttegroValue {
  final Currency currency;
  final int value;
  const Amount({required this.currency, required this.value});
  factory Amount.fromJson(Map<String, Object?> json) => Amount(
        currency: Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": _encodeValue(currency),
        "value": _encodeValue(value),
      };
}
