part of '../../payout.dart';

/// The balance-aging rule supplied for an automatic payout schedule.
final class SettingsMutationScheduleSpec implements InttegroValue {
  final String abide;
  final String id;
  final String label;
  final String tPlus;
  const SettingsMutationScheduleSpec({
    required this.abide,
    required this.id,
    required this.label,
    required this.tPlus,
  });
  factory SettingsMutationScheduleSpec.fromJson(
    Map<String, Object?> json,
  ) =>
      SettingsMutationScheduleSpec(
        abide: json["abide"] as String,
        id: json["id"] as String,
        label: json["label"] as String,
        tPlus: json["t_plus"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "abide": encodeValue(abide),
        "id": encodeValue(id),
        "label": encodeValue(label),
        "t_plus": encodeValue(tPlus),
      };
}
