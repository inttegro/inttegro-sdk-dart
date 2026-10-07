part of '../../otp.dart';

/// A one-time-password transaction paired with its verification attempt.
///
/// Exposes [transaction] and [verificationAttempt].
final class Verification implements InttegroValue {
  final Transaction transaction;
  final VerificationAttempt verificationAttempt;
  const Verification({
    required this.transaction,
    required this.verificationAttempt,
  });
  factory Verification.fromJson(Map<String, Object?> json) => Verification(
        transaction: Transaction.fromJson(
          (json["transaction"] as Map).cast<String, Object?>(),
        ),
        verificationAttempt: VerificationAttempt.fromJson(
          (json["verification_attempt"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "transaction": encodeValue(transaction),
        "verification_attempt": encodeValue(verificationAttempt),
      };
}
