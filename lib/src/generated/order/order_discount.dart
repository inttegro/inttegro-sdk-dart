part of '../../../inttegro.dart';

/// Discount marker returned by the API.
final class OrderDiscount implements _InttegroValue {
  const OrderDiscount();
  factory OrderDiscount.fromJson(Map<String, Object?> json) =>
      const OrderDiscount();
  @override
  Map<String, Object?> toJson() => const {};
}
