part of '../../payout.dart';

/// Caller-safe information about a terminal payout failure.
final class Failure implements InttegroValue {
  final String detail;
  final FailureReason reason;
  final bool retryable;
  const Failure({
    required this.detail,
    required this.reason,
    required this.retryable,
  });
  factory Failure.fromJson(Map<String, Object?> json) => Failure(
        detail: json["detail"] as String,
        reason: FailureReason.fromJson(json["reason"]),
        retryable: json["retryable"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        "detail": encodeValue(detail),
        "reason": encodeValue(reason),
        "retryable": encodeValue(retryable),
      };
}
