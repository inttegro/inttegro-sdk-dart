part of '../../../inttegro.dart';

/// A typed `OTPPurpose` value used by the Inttegro API.
final class OTPPurpose implements _InttegroValue {
  final String value;
  const OTPPurpose(this.value);
  factory OTPPurpose.fromJson(Object? json) => OTPPurpose(json as String);
  static const accountCreation = OTPPurpose("account_creation");
  static const accountRecovery = OTPPurpose("account_recovery");
  static const emailVerification = OTPPurpose("email_verification");
  static const financialAccountVerification =
      OTPPurpose("financial_account_verification");
  static const passwordReset = OTPPurpose("password_reset");
  static const paymentConfirmation = OTPPurpose("payment_confirmation");
  static const paymentMethodVerification =
      OTPPurpose("payment_method_verification");
  static const payoutConfirmation = OTPPurpose("payout_confirmation");
  static const phoneVerification = OTPPurpose("phone_verification");
  static const sensitiveAction = OTPPurpose("sensitive_action");
  static const signIn = OTPPurpose("sign_in");
  static const transactionConfirmation = OTPPurpose("transaction_confirmation");
  static const unspecified = OTPPurpose("unspecified");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is OTPPurpose && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
