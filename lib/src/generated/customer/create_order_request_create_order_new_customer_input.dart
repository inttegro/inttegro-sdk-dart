part of '../../../inttegro.dart';

final class CreateOrderRequestCreateOrderNewCustomerInput
    extends CreateOrderRequest {
  final CreateOrderNewCustomerInput value;
  const CreateOrderRequestCreateOrderNewCustomerInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
