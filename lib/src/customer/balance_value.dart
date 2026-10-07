part of '../../customer.dart';

/// A customer's available balance at a recorded point in time.
///
/// Exposes [asOf] and [available].
final class BalanceValue implements InttegroValue {
  final DateTime asOf;
  final inttegro_money.Amount available;
  const BalanceValue({required this.asOf, required this.available});
  factory BalanceValue.fromJson(Map<String, Object?> json) => BalanceValue(
        asOf: decodeDateTime(json["as_of"]),
        available: inttegro_money.Amount.fromJson(
          (json["available"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "as_of": encodeValue(asOf),
        "available": encodeValue(available),
      };
}
