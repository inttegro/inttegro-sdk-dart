part of '../../order.dart';

/// Request metadata for order operations.
///
/// Carries [idempotencyKey].
final class CreateNewCustomerInputRequestMeta implements InttegroValue {
  final String? idempotencyKey;
  const CreateNewCustomerInputRequestMeta({this.idempotencyKey});
  factory CreateNewCustomerInputRequestMeta.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateNewCustomerInputRequestMeta(
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
