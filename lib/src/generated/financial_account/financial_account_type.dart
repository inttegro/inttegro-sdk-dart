part of '../../../inttegro.dart';

/// A typed `FinancialAccountType` value used by the Inttegro API.
final class FinancialAccountType implements _InttegroValue {
  final String value;
  const FinancialAccountType(this.value);
  factory FinancialAccountType.fromJson(Object? json) =>
      FinancialAccountType(json as String);
  static const wallet = FinancialAccountType("wallet");
  static const bankAccount = FinancialAccountType("bank_account");
  static const doshAccount = FinancialAccountType("dosh_account");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FinancialAccountType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
