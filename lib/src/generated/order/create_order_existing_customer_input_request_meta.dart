part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateOrderExistingCustomerInputRequestMeta
    implements _InttegroValue {
  final String? idempotencyKey;
  const CreateOrderExistingCustomerInputRequestMeta({this.idempotencyKey});
  factory CreateOrderExistingCustomerInputRequestMeta.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateOrderExistingCustomerInputRequestMeta(
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
