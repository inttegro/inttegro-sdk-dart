part of '../../chime.dart';

/// Request metadata for Chime operations.
///
/// Carries [idempotencyKey].
final class ScheduleRequestRequestMeta implements InttegroValue {
  final String? idempotencyKey;
  const ScheduleRequestRequestMeta({this.idempotencyKey});
  factory ScheduleRequestRequestMeta.fromJson(Map<String, Object?> json) =>
      ScheduleRequestRequestMeta(
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (idempotencyKey != null)
          "idempotency_key": encodeValue(idempotencyKey),
      };
}
