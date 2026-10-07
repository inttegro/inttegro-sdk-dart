part of '../../chime.dart';

/// Identifies the Chime schedule to retrieve.
final class LookupScheduleRequest implements InttegroValue {
  final String scheduleId;
  const LookupScheduleRequest({required this.scheduleId});
  factory LookupScheduleRequest.fromJson(Map<String, Object?> json) =>
      LookupScheduleRequest(scheduleId: json["schedule_id"] as String);
  @override
  Map<String, Object?> toJson() => {"schedule_id": encodeValue(scheduleId)};
}
