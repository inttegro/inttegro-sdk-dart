part of '../../payout.dart';

/// The automatic payout schedule returned by a settings lookup.
final class SettingsLookupSchedule implements InttegroValue {
  final SettingsLookupScheduleAgingSpec agingSpec;
  final String description;
  final String interval;
  final String name;
  final String scheduleOn;
  final String type;
  const SettingsLookupSchedule({
    required this.agingSpec,
    required this.description,
    required this.interval,
    required this.name,
    required this.scheduleOn,
    required this.type,
  });
  factory SettingsLookupSchedule.fromJson(Map<String, Object?> json) =>
      SettingsLookupSchedule(
        agingSpec: SettingsLookupScheduleAgingSpec.fromJson(
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
        "aging_spec": encodeValue(agingSpec),
        "description": encodeValue(description),
        "interval": encodeValue(interval),
        "name": encodeValue(name),
        "schedule_on": encodeValue(scheduleOn),
        "type": encodeValue(type),
      };
}
