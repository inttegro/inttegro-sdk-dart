part of '../../otp.dart';

/// The action that a one-time password is intended to verify.
final class Purpose implements InttegroValue {
  final String value;
  const Purpose(this.value);
  factory Purpose.fromJson(Object? json) => Purpose(json as String);
  static const accountCreation = Purpose("account_creation");
  static const accountRecovery = Purpose("account_recovery");
  static const emailVerification = Purpose("email_verification");
  static const financialAccountVerification =
      Purpose("financial_account_verification");
  static const passwordReset = Purpose("password_reset");
  static const paymentConfirmation = Purpose("payment_confirmation");
  static const paymentMethodVerification =
      Purpose("payment_method_verification");
  static const payoutConfirmation = Purpose("payout_confirmation");
  static const phoneVerification = Purpose("phone_verification");
  static const sensitiveAction = Purpose("sensitive_action");
  static const signIn = Purpose("sign_in");
  static const transactionConfirmation = Purpose("transaction_confirmation");
  static const unspecified = Purpose("unspecified");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Purpose && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
