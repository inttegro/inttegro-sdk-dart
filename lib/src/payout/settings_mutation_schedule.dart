part of '../../payout.dart';

/// An automatic payout schedule supplied or returned during configuration.
final class SettingsMutationSchedule implements InttegroValue {
  final String description;
  final String id;
  final String interval;
  final String name;
  final String scheduleOn;
  final SettingsMutationScheduleSpec spec;
  final String type;
  const SettingsMutationSchedule({
    required this.description,
    required this.id,
    required this.interval,
    required this.name,
    required this.scheduleOn,
    required this.spec,
    required this.type,
  });
  factory SettingsMutationSchedule.fromJson(Map<String, Object?> json) =>
      SettingsMutationSchedule(
        description: json["description"] as String,
        id: json["id"] as String,
        interval: json["interval"] as String,
        name: json["name"] as String,
        scheduleOn: json["schedule_on"] as String,
        spec: SettingsMutationScheduleSpec.fromJson(
          (json["spec"] as Map).cast<String, Object?>(),
        ),
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "description": encodeValue(description),
        "id": encodeValue(id),
        "interval": encodeValue(interval),
        "name": encodeValue(name),
        "schedule_on": encodeValue(scheduleOn),
        "spec": encodeValue(spec),
        "type": encodeValue(type),
      };
}
