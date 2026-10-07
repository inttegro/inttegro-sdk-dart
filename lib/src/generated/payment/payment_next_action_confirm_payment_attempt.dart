part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentNextActionConfirmPaymentAttempt implements _InttegroValue {
  final String status;
  final bool confirmed;
  final String reason;
  final DateTime? executedAt;
  final DateTime createdAt;
  const PaymentNextActionConfirmPaymentAttempt({
    required this.status,
    required this.confirmed,
    required this.reason,
    this.executedAt,
    required this.createdAt,
  });
  factory PaymentNextActionConfirmPaymentAttempt.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentNextActionConfirmPaymentAttempt(
        status: json["status"] as String,
        confirmed: json["confirmed"] as bool,
        reason: json["reason"] as String,
        executedAt: json["executed_at"] == null
            ? null
            : _decodeDateTime(json["executed_at"]),
        createdAt: _decodeDateTime(json["created_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "status": _encodeValue(status),
        "confirmed": _encodeValue(confirmed),
        "reason": _encodeValue(reason),
        if (executedAt != null) "executed_at": _encodeValue(executedAt),
        "created_at": _encodeValue(createdAt),
      };
}
