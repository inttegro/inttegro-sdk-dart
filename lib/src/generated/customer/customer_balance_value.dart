part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class CustomerBalanceValue implements _InttegroValue {
  final DateTime asOf;
  final Amount available;
  const CustomerBalanceValue({required this.asOf, required this.available});
  factory CustomerBalanceValue.fromJson(Map<String, Object?> json) =>
      CustomerBalanceValue(
        asOf: _decodeDateTime(json["as_of"]),
        available: Amount.fromJson(
          (json["available"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "as_of": _encodeValue(asOf),
        "available": _encodeValue(available),
      };
}
