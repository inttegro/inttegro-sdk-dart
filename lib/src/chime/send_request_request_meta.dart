part of '../../chime.dart';

/// Request metadata for Chime operations.
///
/// Carries [idempotencyKey].
final class SendRequestRequestMeta implements InttegroValue {
  final String? idempotencyKey;
  const SendRequestRequestMeta({this.idempotencyKey});
  factory SendRequestRequestMeta.fromJson(Map<String, Object?> json) =>
      SendRequestRequestMeta(
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
