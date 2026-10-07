part of '../../broadcast.dart';

/// Request metadata for broadcast operations.
///
/// Carries [idempotencyKey].
final class RequestRequestMeta implements InttegroValue {
  final String? idempotencyKey;
  const RequestRequestMeta({this.idempotencyKey});
  factory RequestRequestMeta.fromJson(Map<String, Object?> json) =>
      RequestRequestMeta(
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
