part of '../../otp.dart';

/// A submitted one-time-password verification attempt.
///
/// Exposes [attemptedAt], [id], [presentedToken], and [recipient], among other
/// contract fields.
final class VerificationAttempt implements InttegroValue {
  final DateTime attemptedAt;
  final String id;
  final String presentedToken;
  final String recipient;
  final VerificationAttemptResult result;
  const VerificationAttempt({
    required this.attemptedAt,
    required this.id,
    required this.presentedToken,
    required this.recipient,
    required this.result,
  });
  factory VerificationAttempt.fromJson(Map<String, Object?> json) =>
      VerificationAttempt(
        attemptedAt: decodeDateTime(json["attempted_at"]),
        id: json["id"] as String,
        presentedToken: json["presented_token"] as String,
        recipient: json["recipient"] as String,
        result: VerificationAttemptResult.fromJson(
          (json["result"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "attempted_at": encodeValue(attemptedAt),
        "id": encodeValue(id),
        "presented_token": encodeValue(presentedToken),
        "recipient": encodeValue(recipient),
        "result": encodeValue(result),
      };
}
