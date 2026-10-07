part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PayoutSettingsMutationScheduleSpec implements _InttegroValue {
  final String abide;
  final String id;
  final String label;
  final String tPlus;
  const PayoutSettingsMutationScheduleSpec({
    required this.abide,
    required this.id,
    required this.label,
    required this.tPlus,
  });
  factory PayoutSettingsMutationScheduleSpec.fromJson(
    Map<String, Object?> json,
  ) =>
      PayoutSettingsMutationScheduleSpec(
        abide: json["abide"] as String,
        id: json["id"] as String,
        label: json["label"] as String,
        tPlus: json["t_plus"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "abide": _encodeValue(abide),
        "id": _encodeValue(id),
        "label": _encodeValue(label),
        "t_plus": _encodeValue(tPlus),
      };
}
