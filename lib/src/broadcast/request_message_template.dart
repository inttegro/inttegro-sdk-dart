part of '../../broadcast.dart';

sealed class RequestMessageTemplate implements InttegroValue {
  const RequestMessageTemplate();
  factory RequestMessageTemplate.fromJson(Object? json) {
    try {
      return MessageTemplateText(json as String);
    } catch (_) {}
    try {
      return MessageTemplateReference(
        inttegro_message_template.ReferenceInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported RequestMessageTemplate value');
  }
}
