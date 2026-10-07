part of '../../../inttegro.dart';

sealed class BroadcastRequestMessageTemplate implements _InttegroValue {
  const BroadcastRequestMessageTemplate();
  factory BroadcastRequestMessageTemplate.fromJson(Object? json) {
    try {
      return BroadcastRequestMessageTemplateStringValue(json as String);
    } catch (_) {}
    try {
      return BroadcastRequestMessageTemplateMessageTemplateReferenceInput(
        MessageTemplateReferenceInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported BroadcastRequestMessageTemplate value');
  }
}
