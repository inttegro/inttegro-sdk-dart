part of '../../otp.dart';

/// The verdict and supporting detail for an OTP verification attempt.
///
/// Exposes [detail] and [verdict].
final class VerificationAttemptResult implements InttegroValue {
  final String? detail;
  final VerificationVerdict verdict;
  const VerificationAttemptResult({this.detail, required this.verdict});
  factory VerificationAttemptResult.fromJson(Map<String, Object?> json) =>
      VerificationAttemptResult(
        detail: json["detail"] == null ? null : json["detail"] as String,
        verdict: VerificationVerdict.fromJson(json["verdict"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (detail != null) "detail": encodeValue(detail),
        "verdict": encodeValue(verdict),
      };
}
