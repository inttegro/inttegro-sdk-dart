part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateOrderNewCustomerInputRequestMeta implements _InttegroValue {
  final String? idempotencyKey;
  const CreateOrderNewCustomerInputRequestMeta({this.idempotencyKey});
  factory CreateOrderNewCustomerInputRequestMeta.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateOrderNewCustomerInputRequestMeta(
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
