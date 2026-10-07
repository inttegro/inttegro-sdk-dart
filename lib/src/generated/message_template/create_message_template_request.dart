part of '../../../inttegro.dart';

sealed class CreateMessageTemplateRequest implements _InttegroValue {
  const CreateMessageTemplateRequest();
  factory CreateMessageTemplateRequest.fromJson(Object? json) {
    try {
      return CreateMessageTemplateRequestCreateSMSMessageTemplateRequest(
        CreateSMSMessageTemplateRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return CreateMessageTemplateRequestCreateEmailMessageTemplateRequest(
        CreateEmailMessageTemplateRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported CreateMessageTemplateRequest value');
  }
}
