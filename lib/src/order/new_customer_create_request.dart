part of '../../order.dart';

final class NewCustomerCreateRequest extends CreateRequest {
  final CreateNewCustomerInput value;
  const NewCustomerCreateRequest(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
