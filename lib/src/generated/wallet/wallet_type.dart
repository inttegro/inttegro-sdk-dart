part of '../../../inttegro.dart';

/// A typed `WalletType` value used by the Inttegro API.
final class WalletType implements _InttegroValue {
  final String value;
  const WalletType(this.value);
  factory WalletType.fromJson(Object? json) => WalletType(json as String);
  static const mobileMoney = WalletType("mobile_money");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is WalletType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
