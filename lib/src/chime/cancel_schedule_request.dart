part of '../../chime.dart';

/// Identifies the Chime schedule to cancel.
final class CancelScheduleRequest implements InttegroValue {
  final String scheduleId;
  const CancelScheduleRequest({required this.scheduleId});
  factory CancelScheduleRequest.fromJson(Map<String, Object?> json) =>
      CancelScheduleRequest(scheduleId: json["schedule_id"] as String);
  @override
  Map<String, Object?> toJson() => {"schedule_id": encodeValue(scheduleId)};
}
