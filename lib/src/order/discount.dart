part of '../../order.dart';

/// Discount marker returned by the API.
final class Discount implements InttegroValue {
  const Discount();
  factory Discount.fromJson(Map<String, Object?> json) => const Discount();
  @override
  Map<String, Object?> toJson() => const {};
}
