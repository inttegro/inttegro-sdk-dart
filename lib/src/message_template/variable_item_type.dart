part of '../../message_template.dart';

/// The required scalar type for each item in a template array variable.
final class VariableItemType implements InttegroValue {
  final String value;
  const VariableItemType(this.value);
  factory VariableItemType.fromJson(Object? json) =>
      VariableItemType(json as String);
  static const string = VariableItemType("string");
  static const number = VariableItemType("number");
  static const integer = VariableItemType("integer");
  static const boolean = VariableItemType("boolean");
  static const url = VariableItemType("url");
  static const email = VariableItemType("email");
  static const phone = VariableItemType("phone");
  static const date = VariableItemType("date");
  static const datetime = VariableItemType("datetime");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is VariableItemType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
