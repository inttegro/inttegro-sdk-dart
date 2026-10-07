part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class BroadcastRequestRequestMeta implements _InttegroValue {
  final String? idempotencyKey;
  const BroadcastRequestRequestMeta({this.idempotencyKey});
  factory BroadcastRequestRequestMeta.fromJson(Map<String, Object?> json) =>
      BroadcastRequestRequestMeta(
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
