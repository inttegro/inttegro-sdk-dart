part of '../../financial_account.dart';

/// The kind of financial account represented by [FinancialAccount].
///
/// Known values identify wallets, bank accounts, and Dosh accounts. The public
/// constructor preserves forward compatibility with values introduced by the
/// API after this SDK version.
final class Type implements InttegroValue {
  final String value;
  const Type(this.value);
  factory Type.fromJson(Object? json) => Type(json as String);
  static const wallet = Type("wallet");
  static const bankAccount = Type("bank_account");
  static const doshAccount = Type("dosh_account");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Type && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
