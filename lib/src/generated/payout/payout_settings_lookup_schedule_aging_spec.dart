part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PayoutSettingsLookupScheduleAgingSpec implements _InttegroValue {
  final String abide;
  final String label;
  final String tPlus;
  const PayoutSettingsLookupScheduleAgingSpec({
    required this.abide,
    required this.label,
    required this.tPlus,
  });
  factory PayoutSettingsLookupScheduleAgingSpec.fromJson(
    Map<String, Object?> json,
  ) =>
      PayoutSettingsLookupScheduleAgingSpec(
        abide: json["abide"] as String,
        label: json["label"] as String,
        tPlus: json["t_plus"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "abide": _encodeValue(abide),
        "label": _encodeValue(label),
        "t_plus": _encodeValue(tPlus),
      };
}
