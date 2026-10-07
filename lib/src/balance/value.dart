part of '../../balance.dart';

/// A balance amount expressed as an integer.
///
/// Exposes [amount].
final class Value implements InttegroValue {
  final int amount;
  const Value({required this.amount});
  factory Value.fromJson(Map<String, Object?> json) =>
      Value(amount: (json["amount"] as num).toInt());
  @override
  Map<String, Object?> toJson() => {"amount": encodeValue(amount)};
}
