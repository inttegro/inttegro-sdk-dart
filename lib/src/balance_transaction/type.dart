part of '../../balance_transaction.dart';

/// The commerce event that produced a [BalanceTransaction].
final class Type implements InttegroValue {
  final String value;
  const Type(this.value);
  factory Type.fromJson(Object? json) => Type(json as String);
  static const payment = Type("payment");
  static const refund = Type("refund");
  static const payout = Type("payout");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Type && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
