part of '../../payout.dart';

/// Platform limits applied to payouts.
final class SettingsLimits implements InttegroValue {
  final AmountLimits amount;

  const SettingsLimits({required this.amount});

  factory SettingsLimits.fromJson(Map<String, Object?> json) => SettingsLimits(
        amount: AmountLimits.fromJson(
          (json['amount'] as Map).cast<String, Object?>(),
        ),
      );

  @override
  Map<String, Object?> toJson() => {'amount': encodeValue(amount)};
}
