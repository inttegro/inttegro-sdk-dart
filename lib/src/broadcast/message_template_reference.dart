part of '../../broadcast.dart';

final class MessageTemplateReference extends RequestMessageTemplate {
  final inttegro_message_template.ReferenceInput value;
  const MessageTemplateReference(
    this.value,
  );
  @override
  Object? toJson() => encodeValue(value);
}
