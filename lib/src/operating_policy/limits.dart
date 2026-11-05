part of '../../operating_policy.dart';

/// Amount limits selected by an operating policy.
final class Limits implements InttegroValue {
  final AmountRange amount;
  const Limits({required this.amount});
  factory Limits.fromJson(Map<String, Object?> json) => Limits(
        amount: AmountRange.fromJson(
          (json['amount'] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {'amount': encodeValue(amount)};
}
