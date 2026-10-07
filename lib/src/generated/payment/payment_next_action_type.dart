part of '../../../inttegro.dart';

/// A typed `PaymentNextActionType` value used by the Inttegro API.
final class PaymentNextActionType implements _InttegroValue {
  final String value;
  const PaymentNextActionType(this.value);
  factory PaymentNextActionType.fromJson(Object? json) =>
      PaymentNextActionType(json as String);
  static const confirmPayment = PaymentNextActionType("confirm_payment");
  static const execute = PaymentNextActionType("execute");
  static const redirect = PaymentNextActionType("redirect");
  static const authorizePayment = PaymentNextActionType("authorize_payment");
  static const requestConfirmation =
      PaymentNextActionType("request_confirmation");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is PaymentNextActionType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
