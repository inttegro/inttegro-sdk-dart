part of '../../money.dart';

/// A monetary amount supplied to an API operation.
///
/// Carries [currency] and [value].
final class AmountParams implements InttegroValue {
  final Currency currency;
  final int value;
  const AmountParams({required this.currency, required this.value});
  factory AmountParams.fromJson(Map<String, Object?> json) => AmountParams(
        currency: Currency.fromJson(json["currency"]),
        value: (json["value"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "currency": encodeValue(currency),
        "value": encodeValue(value),
      };
}
