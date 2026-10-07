part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class RenderedSMSMessageTemplate implements _InttegroValue {
  final String fullMessage;
  const RenderedSMSMessageTemplate({required this.fullMessage});
  factory RenderedSMSMessageTemplate.fromJson(Map<String, Object?> json) =>
      RenderedSMSMessageTemplate(fullMessage: json["full_message"] as String);
  @override
  Map<String, Object?> toJson() => {"full_message": _encodeValue(fullMessage)};
}
