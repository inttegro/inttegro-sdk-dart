part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PayoutSettingsLookupSchedule implements _InttegroValue {
  final PayoutSettingsLookupScheduleAgingSpec agingSpec;
  final String description;
  final String interval;
  final String name;
  final String scheduleOn;
  final String type;
  const PayoutSettingsLookupSchedule({
    required this.agingSpec,
    required this.description,
    required this.interval,
    required this.name,
    required this.scheduleOn,
    required this.type,
  });
  factory PayoutSettingsLookupSchedule.fromJson(Map<String, Object?> json) =>
      PayoutSettingsLookupSchedule(
        agingSpec: PayoutSettingsLookupScheduleAgingSpec.fromJson(
          (json["aging_spec"] as Map).cast<String, Object?>(),
        ),
        description: json["description"] as String,
        interval: json["interval"] as String,
        name: json["name"] as String,
        scheduleOn: json["schedule_on"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "aging_spec": _encodeValue(agingSpec),
        "description": _encodeValue(description),
        "interval": _encodeValue(interval),
        "name": _encodeValue(name),
        "schedule_on": _encodeValue(scheduleOn),
        "type": _encodeValue(type),
      };
}
