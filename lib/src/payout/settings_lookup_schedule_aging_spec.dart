part of '../../payout.dart';

/// The balance-aging rule returned with an automatic payout schedule.
final class SettingsLookupScheduleAgingSpec implements InttegroValue {
  final String abide;
  final String publicId;
  final String label;
  final String tPlus;
  const SettingsLookupScheduleAgingSpec({
    required this.abide,
    required this.publicId,
    required this.label,
    required this.tPlus,
  });
  factory SettingsLookupScheduleAgingSpec.fromJson(
    Map<String, Object?> json,
  ) =>
      SettingsLookupScheduleAgingSpec(
        abide: json["abide"] as String,
        publicId: json["public_id"] as String,
        label: json["label"] as String,
        tPlus: json["t_plus"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "abide": encodeValue(abide),
        "public_id": encodeValue(publicId),
        "label": encodeValue(label),
        "t_plus": encodeValue(tPlus),
      };
}
