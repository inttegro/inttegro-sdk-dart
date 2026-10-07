part of '../../chime.dart';

/// Error details returned by Chime operations.
///
/// Exposes [recipient], [fixCode], and [type].
final class ScheduleError implements InttegroValue {
  final String? recipient;
  final String? fixCode;
  final String? type;
  const ScheduleError({this.recipient, this.fixCode, this.type});
  factory ScheduleError.fromJson(Map<String, Object?> json) => ScheduleError(
        recipient:
            json["recipient"] == null ? null : json["recipient"] as String,
        fixCode: json["fix_code"] == null ? null : json["fix_code"] as String,
        type: json["type"] == null ? null : json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (recipient != null) "recipient": encodeValue(recipient),
        if (fixCode != null) "fix_code": encodeValue(fixCode),
        if (type != null) "type": encodeValue(type),
      };
}
