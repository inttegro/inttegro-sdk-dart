part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ScheduleChimeRequestRequestMeta implements _InttegroValue {
  final String? idempotencyKey;
  const ScheduleChimeRequestRequestMeta({this.idempotencyKey});
  factory ScheduleChimeRequestRequestMeta.fromJson(Map<String, Object?> json) =>
      ScheduleChimeRequestRequestMeta(
        idempotencyKey: json["idempotency_key"] == null
            ? null
            : json["idempotency_key"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (idempotencyKey != null)
          "idempotency_key": _encodeValue(idempotencyKey),
      };
}
