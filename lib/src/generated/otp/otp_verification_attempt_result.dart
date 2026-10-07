part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OTPVerificationAttemptResult implements _InttegroValue {
  final String? detail;
  final OTPVerificationVerdict verdict;
  const OTPVerificationAttemptResult({this.detail, required this.verdict});
  factory OTPVerificationAttemptResult.fromJson(Map<String, Object?> json) =>
      OTPVerificationAttemptResult(
        detail: json["detail"] == null ? null : json["detail"] as String,
        verdict: OTPVerificationVerdict.fromJson(json["verdict"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (detail != null) "detail": _encodeValue(detail),
        "verdict": _encodeValue(verdict),
      };
}
