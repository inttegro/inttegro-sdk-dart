part of '../../../inttegro.dart';

final class CreateMessageTemplateRequestCreateSMSMessageTemplateRequest
    extends CreateMessageTemplateRequest {
  final CreateSMSMessageTemplateRequest value;
  const CreateMessageTemplateRequestCreateSMSMessageTemplateRequest(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
