part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodCard implements _InttegroValue {
  const PaymentMethodCard();
  factory PaymentMethodCard.fromJson(Map<String, Object?> json) =>
      const PaymentMethodCard();
  @override
  Map<String, Object?> toJson() => const {};
}
