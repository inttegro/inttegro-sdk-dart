part of '../../../inttegro.dart';

/// A typed `MessageTemplateChannel` value used by the Inttegro API.
final class MessageTemplateChannel implements _InttegroValue {
  final String value;
  const MessageTemplateChannel(this.value);
  factory MessageTemplateChannel.fromJson(Object? json) =>
      MessageTemplateChannel(json as String);
  static const sms = MessageTemplateChannel("sms");
  static const email = MessageTemplateChannel("email");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is MessageTemplateChannel && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
