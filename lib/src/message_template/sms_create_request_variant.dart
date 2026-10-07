part of '../../message_template.dart';

final class SMSCreateRequestVariant extends CreateRequest {
  final SMSCreateRequest value;
  const SMSCreateRequestVariant(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
