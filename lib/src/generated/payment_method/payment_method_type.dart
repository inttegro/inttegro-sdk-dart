part of '../../../inttegro.dart';

/// A typed `PaymentMethodType` value used by the Inttegro API.
final class PaymentMethodType implements _InttegroValue {
  final String value;
  const PaymentMethodType(this.value);
  factory PaymentMethodType.fromJson(Object? json) =>
      PaymentMethodType(json as String);
  static const mobileMoney = PaymentMethodType("mobile_money");
  static const bankAccount = PaymentMethodType("bank_account");
  static const card = PaymentMethodType("card");
  static const motito = PaymentMethodType("motito");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentMethodType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
