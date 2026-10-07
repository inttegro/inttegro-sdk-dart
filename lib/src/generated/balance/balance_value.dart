part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class BalanceValue implements _InttegroValue {
  final int amount;
  const BalanceValue({required this.amount});
  factory BalanceValue.fromJson(Map<String, Object?> json) =>
      BalanceValue(amount: (json["amount"] as num).toInt());
  @override
  Map<String, Object?> toJson() => {"amount": _encodeValue(amount)};
}
