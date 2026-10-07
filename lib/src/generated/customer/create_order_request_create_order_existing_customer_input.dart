part of '../../../inttegro.dart';

final class CreateOrderRequestCreateOrderExistingCustomerInput
    extends CreateOrderRequest {
  final CreateOrderExistingCustomerInput value;
  const CreateOrderRequestCreateOrderExistingCustomerInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
