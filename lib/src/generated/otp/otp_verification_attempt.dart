part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OTPVerificationAttempt implements _InttegroValue {
  final DateTime attemptedAt;
  final String id;
  final String presentedToken;
  final String recipient;
  final OTPVerificationAttemptResult result;
  const OTPVerificationAttempt({
    required this.attemptedAt,
    required this.id,
    required this.presentedToken,
    required this.recipient,
    required this.result,
  });
  factory OTPVerificationAttempt.fromJson(Map<String, Object?> json) =>
      OTPVerificationAttempt(
        attemptedAt: _decodeDateTime(json["attempted_at"]),
        id: json["id"] as String,
        presentedToken: json["presented_token"] as String,
        recipient: json["recipient"] as String,
        result: OTPVerificationAttemptResult.fromJson(
          (json["result"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "attempted_at": _encodeValue(attemptedAt),
        "id": _encodeValue(id),
        "presented_token": _encodeValue(presentedToken),
        "recipient": _encodeValue(recipient),
        "result": _encodeValue(result),
      };
}
