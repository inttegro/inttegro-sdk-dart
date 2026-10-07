part of '../../../inttegro.dart';

/// A typed `MessageTemplateVariableItemType` value used by the Inttegro API.
final class MessageTemplateVariableItemType implements _InttegroValue {
  final String value;
  const MessageTemplateVariableItemType(this.value);
  factory MessageTemplateVariableItemType.fromJson(Object? json) =>
      MessageTemplateVariableItemType(json as String);
  static const string = MessageTemplateVariableItemType("string");
  static const number = MessageTemplateVariableItemType("number");
  static const integer = MessageTemplateVariableItemType("integer");
  static const boolean = MessageTemplateVariableItemType("boolean");
  static const url = MessageTemplateVariableItemType("url");
  static const email = MessageTemplateVariableItemType("email");
  static const phone = MessageTemplateVariableItemType("phone");
  static const date = MessageTemplateVariableItemType("date");
  static const datetime = MessageTemplateVariableItemType("datetime");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is MessageTemplateVariableItemType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
