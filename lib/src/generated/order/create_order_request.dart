part of '../../../inttegro.dart';

sealed class CreateOrderRequest implements _InttegroValue {
  const CreateOrderRequest();
  factory CreateOrderRequest.fromJson(Object? json) {
    try {
      return CreateOrderRequestCreateOrderNewCustomerInput(
        CreateOrderNewCustomerInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return CreateOrderRequestCreateOrderExistingCustomerInput(
        CreateOrderExistingCustomerInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported CreateOrderRequest value');
  }
}
