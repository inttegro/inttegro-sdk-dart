part of '../../../inttegro.dart';

/// A typed `DeliveryChannel` value used by the Inttegro API.
final class DeliveryChannel implements _InttegroValue {
  final String value;
  const DeliveryChannel(this.value);
  factory DeliveryChannel.fromJson(Object? json) =>
      DeliveryChannel(json as String);
  static const email = DeliveryChannel("email");
  static const sms = DeliveryChannel("sms");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is DeliveryChannel && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
