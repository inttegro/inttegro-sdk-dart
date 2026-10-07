part of '../../payment.dart';

/// The latest attempt to satisfy a payment-confirmation challenge.
final class NextActionConfirmAttempt implements InttegroValue {
  final String status;
  final bool confirmed;
  final String reason;
  final DateTime? executedAt;
  final DateTime createdAt;
  const NextActionConfirmAttempt({
    required this.status,
    required this.confirmed,
    required this.reason,
    this.executedAt,
    required this.createdAt,
  });
  factory NextActionConfirmAttempt.fromJson(
    Map<String, Object?> json,
  ) =>
      NextActionConfirmAttempt(
        status: json["status"] as String,
        confirmed: json["confirmed"] as bool,
        reason: json["reason"] as String,
        executedAt: json["executed_at"] == null
            ? null
            : decodeDateTime(json["executed_at"]),
        createdAt: decodeDateTime(json["created_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "status": encodeValue(status),
        "confirmed": encodeValue(confirmed),
        "reason": encodeValue(reason),
        if (executedAt != null) "executed_at": encodeValue(executedAt),
        "created_at": encodeValue(createdAt),
      };
}
