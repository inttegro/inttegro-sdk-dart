part of '../../../inttegro.dart';

/// A typed `MobileMoneyNetwork` value used by the Inttegro API.
final class MobileMoneyNetwork implements _InttegroValue {
  final String value;
  const MobileMoneyNetwork(this.value);
  factory MobileMoneyNetwork.fromJson(Object? json) =>
      MobileMoneyNetwork(json as String);
  static const airtel = MobileMoneyNetwork("airtel");
  static const mtn = MobileMoneyNetwork("mtn");
  static const telecel = MobileMoneyNetwork("telecel");
  static const vodafone = MobileMoneyNetwork("vodafone");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is MobileMoneyNetwork && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
