part of '../../../inttegro.dart';

/// A typed `BankAccountType` value used by the Inttegro API.
final class BankAccountType implements _InttegroValue {
  final String value;
  const BankAccountType(this.value);
  factory BankAccountType.fromJson(Object? json) =>
      BankAccountType(json as String);
  static const ghanaBankAccount = BankAccountType("ghana_bank_account");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is BankAccountType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
