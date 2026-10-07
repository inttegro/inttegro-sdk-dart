part of '../../payment_method.dart';

/// The instrument represented by a [PaymentMethod].
final class Type implements InttegroValue {
  final String value;
  const Type(this.value);
  factory Type.fromJson(Object? json) => Type(json as String);
  static const mobileMoney = Type("mobile_money");
  static const bankAccount = Type("bank_account");
  static const card = Type("card");
  static const motito = Type("motito");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Type && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
