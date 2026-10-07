part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PayoutSettingsMutationSchedule implements _InttegroValue {
  final String description;
  final String id;
  final String interval;
  final String name;
  final String scheduleOn;
  final PayoutSettingsMutationScheduleSpec spec;
  final String type;
  const PayoutSettingsMutationSchedule({
    required this.description,
    required this.id,
    required this.interval,
    required this.name,
    required this.scheduleOn,
    required this.spec,
    required this.type,
  });
  factory PayoutSettingsMutationSchedule.fromJson(Map<String, Object?> json) =>
      PayoutSettingsMutationSchedule(
        description: json["description"] as String,
        id: json["id"] as String,
        interval: json["interval"] as String,
        name: json["name"] as String,
        scheduleOn: json["schedule_on"] as String,
        spec: PayoutSettingsMutationScheduleSpec.fromJson(
          (json["spec"] as Map).cast<String, Object?>(),
        ),
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "description": _encodeValue(description),
        "id": _encodeValue(id),
        "interval": _encodeValue(interval),
        "name": _encodeValue(name),
        "schedule_on": _encodeValue(scheduleOn),
        "spec": _encodeValue(spec),
        "type": _encodeValue(type),
      };
}
