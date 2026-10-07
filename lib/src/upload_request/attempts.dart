part of '../../upload_request.dart';

/// Attempt limits and aggregate attempt counts for an upload request.
///
/// Exposes [maxAttempts], [attemptCount], [failedAttemptCount], and
/// [lastAttemptedAt].
final class Attempts implements InttegroValue {
  final int? maxAttempts;
  final int attemptCount;
  final int failedAttemptCount;
  final DateTime? lastAttemptedAt;
  const Attempts({
    this.maxAttempts,
    required this.attemptCount,
    required this.failedAttemptCount,
    this.lastAttemptedAt,
  });
  factory Attempts.fromJson(Map<String, Object?> json) => Attempts(
        maxAttempts: json["max_attempts"] == null
            ? null
            : (json["max_attempts"] as num).toInt(),
        attemptCount: (json["attempt_count"] as num).toInt(),
        failedAttemptCount: (json["failed_attempt_count"] as num).toInt(),
        lastAttemptedAt: json["last_attempted_at"] == null
            ? null
            : decodeDateTime(json["last_attempted_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (maxAttempts != null) "max_attempts": encodeValue(maxAttempts),
        "attempt_count": encodeValue(attemptCount),
        "failed_attempt_count": encodeValue(failedAttemptCount),
        if (lastAttemptedAt != null)
          "last_attempted_at": encodeValue(lastAttemptedAt),
      };
}
