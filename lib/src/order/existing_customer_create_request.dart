part of '../../order.dart';

final class ExistingCustomerCreateRequest extends CreateRequest {
  final CreateExistingCustomerInput value;
  const ExistingCustomerCreateRequest(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
