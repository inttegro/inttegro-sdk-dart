part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class MessageTemplateIDRequest implements _InttegroValue {
  final String id;
  const MessageTemplateIDRequest({required this.id});
  factory MessageTemplateIDRequest.fromJson(Map<String, Object?> json) =>
      MessageTemplateIDRequest(id: json["id"] as String);
  @override
  Map<String, Object?> toJson() => {"id": _encodeValue(id)};
}
