part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CancelScheduleRequest implements _InttegroValue {
  final String scheduleId;
  const CancelScheduleRequest({required this.scheduleId});
  factory CancelScheduleRequest.fromJson(Map<String, Object?> json) =>
      CancelScheduleRequest(scheduleId: json["schedule_id"] as String);
  @override
  Map<String, Object?> toJson() => {"schedule_id": _encodeValue(scheduleId)};
}
