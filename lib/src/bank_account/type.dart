part of '../../bank_account.dart';

/// The country-specific bank-account representation.
final class Type implements InttegroValue {
  final String value;
  const Type(this.value);
  factory Type.fromJson(Object? json) => Type(json as String);
  static const ghanaBankAccount = Type("ghana_bank_account");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Type && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
