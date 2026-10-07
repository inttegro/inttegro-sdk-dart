part of '../../payout.dart';

/// The balance-aging rule returned with an automatic payout schedule.
final class SettingsLookupScheduleAgingSpec implements InttegroValue {
  final String abide;
  final String label;
  final String tPlus;
  const SettingsLookupScheduleAgingSpec({
    required this.abide,
    required this.label,
    required this.tPlus,
  });
  factory SettingsLookupScheduleAgingSpec.fromJson(
    Map<String, Object?> json,
  ) =>
      SettingsLookupScheduleAgingSpec(
        abide: json["abide"] as String,
        label: json["label"] as String,
        tPlus: json["t_plus"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "abide": encodeValue(abide),
        "label": encodeValue(label),
        "t_plus": encodeValue(tPlus),
      };
}
