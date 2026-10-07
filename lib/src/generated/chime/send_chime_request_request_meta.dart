part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class SendChimeRequestRequestMeta implements _InttegroValue {
  final String? idempotencyKey;
  const SendChimeRequestRequestMeta({this.idempotencyKey});
  factory SendChimeRequestRequestMeta.fromJson(Map<String, Object?> json) =>
      SendChimeRequestRequestMeta(
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
