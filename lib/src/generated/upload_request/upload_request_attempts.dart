part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class UploadRequestAttempts implements _InttegroValue {
  final int? maxAttempts;
  final int attemptCount;
  final int failedAttemptCount;
  final DateTime? lastAttemptedAt;
  const UploadRequestAttempts({
    this.maxAttempts,
    required this.attemptCount,
    required this.failedAttemptCount,
    this.lastAttemptedAt,
  });
  factory UploadRequestAttempts.fromJson(Map<String, Object?> json) =>
      UploadRequestAttempts(
        maxAttempts: json["max_attempts"] == null
            ? null
            : (json["max_attempts"] as num).toInt(),
        attemptCount: (json["attempt_count"] as num).toInt(),
        failedAttemptCount: (json["failed_attempt_count"] as num).toInt(),
        lastAttemptedAt: json["last_attempted_at"] == null
            ? null
            : _decodeDateTime(json["last_attempted_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (maxAttempts != null) "max_attempts": _encodeValue(maxAttempts),
        "attempt_count": _encodeValue(attemptCount),
        "failed_attempt_count": _encodeValue(failedAttemptCount),
        if (lastAttemptedAt != null)
          "last_attempted_at": _encodeValue(lastAttemptedAt),
      };
}
