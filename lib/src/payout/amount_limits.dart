part of '../../payout.dart';

/// Inclusive payout amount range.
final class AmountLimits implements InttegroValue {
  final inttegro_money.Amount min;
  final inttegro_money.Amount max;

  const AmountLimits({required this.min, required this.max});

  factory AmountLimits.fromJson(Map<String, Object?> json) => AmountLimits(
        min: inttegro_money.Amount.fromJson(
          (json['min'] as Map).cast<String, Object?>(),
        ),
        max: inttegro_money.Amount.fromJson(
          (json['max'] as Map).cast<String, Object?>(),
        ),
      );

  @override
  Map<String, Object?> toJson() => {
        'min': encodeValue(min),
        'max': encodeValue(max),
      };
}
