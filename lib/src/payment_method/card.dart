part of '../../payment_method.dart';

/// Card-specific payment-method details; the current wire shape has no card
/// fields.
final class Card implements InttegroValue {
  const Card();
  factory Card.fromJson(Map<String, Object?> json) => const Card();
  @override
  Map<String, Object?> toJson() => const {};
}
