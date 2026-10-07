part of '../../order.dart';

sealed class CreateRequest implements InttegroValue {
  const CreateRequest();
  factory CreateRequest.fromJson(Object? json) {
    try {
      return NewCustomerCreateRequest(
        CreateNewCustomerInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ExistingCustomerCreateRequest(
        CreateExistingCustomerInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported CreateRequest value');
  }
}
