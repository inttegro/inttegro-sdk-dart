part of '../../../inttegro.dart';

final class BroadcastRequestMessageTemplateMessageTemplateReferenceInput
    extends BroadcastRequestMessageTemplate {
  final MessageTemplateReferenceInput value;
  const BroadcastRequestMessageTemplateMessageTemplateReferenceInput(
    this.value,
  );
  @override
  Object? toJson() => _encodeValue(value);
}
