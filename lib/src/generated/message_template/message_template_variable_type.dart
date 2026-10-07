part of '../../../inttegro.dart';

/// A typed `MessageTemplateVariableType` value used by the Inttegro API.
final class MessageTemplateVariableType implements _InttegroValue {
  final String value;
  const MessageTemplateVariableType(this.value);
  factory MessageTemplateVariableType.fromJson(Object? json) =>
      MessageTemplateVariableType(json as String);
  static const string = MessageTemplateVariableType("string");
  static const number = MessageTemplateVariableType("number");
  static const integer = MessageTemplateVariableType("integer");
  static const boolean = MessageTemplateVariableType("boolean");
  static const url = MessageTemplateVariableType("url");
  static const email = MessageTemplateVariableType("email");
  static const phone = MessageTemplateVariableType("phone");
  static const date = MessageTemplateVariableType("date");
  static const datetime = MessageTemplateVariableType("datetime");
  static const array = MessageTemplateVariableType("array");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is MessageTemplateVariableType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
