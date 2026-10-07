part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OTPVerification implements _InttegroValue {
  final OTPTransaction transaction;
  final OTPVerificationAttempt verificationAttempt;
  const OTPVerification({
    required this.transaction,
    required this.verificationAttempt,
  });
  factory OTPVerification.fromJson(Map<String, Object?> json) =>
      OTPVerification(
        transaction: OTPTransaction.fromJson(
          (json["transaction"] as Map).cast<String, Object?>(),
        ),
        verificationAttempt: OTPVerificationAttempt.fromJson(
          (json["verification_attempt"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "transaction": _encodeValue(transaction),
        "verification_attempt": _encodeValue(verificationAttempt),
      };
}
