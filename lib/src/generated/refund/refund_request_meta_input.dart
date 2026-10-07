part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class RefundRequestMetaInput implements _InttegroValue {
  final String? idempotencyKey;
  const RefundRequestMetaInput({this.idempotencyKey});
  factory RefundRequestMetaInput.fromJson(Map<String, Object?> json) =>
      RefundRequestMetaInput(
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
