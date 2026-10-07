part of '../../../inttegro.dart';

/// A typed `PaymentConfirmationChannel` value used by the Inttegro API.
final class PaymentConfirmationChannel implements _InttegroValue {
  final String value;
  const PaymentConfirmationChannel(this.value);
  factory PaymentConfirmationChannel.fromJson(Object? json) =>
      PaymentConfirmationChannel(json as String);
  static const sms = PaymentConfirmationChannel("sms");
  static const email = PaymentConfirmationChannel("email");
  static const push = PaymentConfirmationChannel("push");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentConfirmationChannel && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
