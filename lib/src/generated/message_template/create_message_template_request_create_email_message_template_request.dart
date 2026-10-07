part of '../../../inttegro.dart';

final class CreateMessageTemplateRequestCreateEmailMessageTemplateRequest
    extends CreateMessageTemplateRequest {
  final CreateEmailMessageTemplateRequest value;
  const CreateMessageTemplateRequestCreateEmailMessageTemplateRequest(
    this.value,
  );
  @override
  Object? toJson() => _encodeValue(value);
}
