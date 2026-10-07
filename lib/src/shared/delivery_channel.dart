part of '../../shared.dart';

/// A supported channel for delivering customer communication.
final class DeliveryChannel implements InttegroValue {
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
