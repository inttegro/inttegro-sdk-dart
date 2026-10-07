part of '../../wallet.dart';

/// The kind of wallet represented by a financial account.
final class Type implements InttegroValue {
  final String value;
  const Type(this.value);
  factory Type.fromJson(Object? json) => Type(json as String);
  static const mobileMoney = Type("mobile_money");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Type && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
