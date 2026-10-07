part of '../../../inttegro.dart';

/// A typed `MessageTemplateStatus` value used by the Inttegro API.
final class MessageTemplateStatus implements _InttegroValue {
  final String value;
  const MessageTemplateStatus(this.value);
  factory MessageTemplateStatus.fromJson(Object? json) =>
      MessageTemplateStatus(json as String);
  static const draft = MessageTemplateStatus("draft");
  static const published = MessageTemplateStatus("published");
  static const archived = MessageTemplateStatus("archived");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is MessageTemplateStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
