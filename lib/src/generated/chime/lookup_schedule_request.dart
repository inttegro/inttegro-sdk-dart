part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupScheduleRequest implements _InttegroValue {
  final String scheduleId;
  const LookupScheduleRequest({required this.scheduleId});
  factory LookupScheduleRequest.fromJson(Map<String, Object?> json) =>
      LookupScheduleRequest(scheduleId: json["schedule_id"] as String);
  @override
  Map<String, Object?> toJson() => {"schedule_id": _encodeValue(scheduleId)};
}
