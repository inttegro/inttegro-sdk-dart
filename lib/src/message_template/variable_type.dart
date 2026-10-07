part of '../../message_template.dart';

/// The value type accepted by a message-template variable.
final class VariableType implements InttegroValue {
  final String value;
  const VariableType(this.value);
  factory VariableType.fromJson(Object? json) => VariableType(json as String);
  static const string = VariableType("string");
  static const number = VariableType("number");
  static const integer = VariableType("integer");
  static const boolean = VariableType("boolean");
  static const url = VariableType("url");
  static const email = VariableType("email");
  static const phone = VariableType("phone");
  static const date = VariableType("date");
  static const datetime = VariableType("datetime");
  static const array = VariableType("array");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is VariableType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
