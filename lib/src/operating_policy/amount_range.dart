part of '../../operating_policy.dart';

/// Inclusive operating amount bounds in minor currency units.
final class AmountRange implements InttegroValue {
  final int min;
  final int max;
  const AmountRange({required this.min, required this.max});
  factory AmountRange.fromJson(Map<String, Object?> json) => AmountRange(
        min: json['min'] as int,
        max: json['max'] as int,
      );
  @override
  Map<String, Object?> toJson() => {'min': min, 'max': max};
}
