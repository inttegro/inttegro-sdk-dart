part of '../../refund.dart';

/// Request meta fields accepted by the refund API.
///
/// Carries [idempotencyKey].
final class RequestMetaInput implements InttegroValue {
  final String? idempotencyKey;
  const RequestMetaInput({this.idempotencyKey});
  factory RequestMetaInput.fromJson(Map<String, Object?> json) =>
      RequestMetaInput(
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
