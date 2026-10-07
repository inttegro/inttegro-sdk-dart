part of '../../order.dart';

/// Request metadata for order operations.
///
/// Carries [idempotencyKey].
final class CreateExistingCustomerInputRequestMeta implements InttegroValue {
  final String? idempotencyKey;
  const CreateExistingCustomerInputRequestMeta({this.idempotencyKey});
  factory CreateExistingCustomerInputRequestMeta.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateExistingCustomerInputRequestMeta(
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
