part of '../../../inttegro.dart';

/// Caller-safe information about a terminal payout failure.
final class PayoutFailure implements _InttegroValue {
  final String detail;
  final PayoutFailureReason reason;
  final bool retryable;
  const PayoutFailure({
    required this.detail,
    required this.reason,
    required this.retryable,
  });
  factory PayoutFailure.fromJson(Map<String, Object?> json) => PayoutFailure(
        detail: json["detail"] as String,
        reason: PayoutFailureReason.fromJson(json["reason"]),
        retryable: json["retryable"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        "detail": _encodeValue(detail),
        "reason": _encodeValue(reason),
        "retryable": _encodeValue(retryable),
      };
}
