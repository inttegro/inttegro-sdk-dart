part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentAttempt implements _InttegroValue {
  final String? paymentMethodType;
  final String? paymentMethodId;
  final String? reference;
  final PaymentAttemptError? error;
  final PaymentAttemptStatus status;
  final DateTime initiatedAt;
  final DateTime? succeededAt;
  const PaymentAttempt({
    this.paymentMethodType,
    this.paymentMethodId,
    this.reference,
    this.error,
    required this.status,
    required this.initiatedAt,
    this.succeededAt,
  });
  factory PaymentAttempt.fromJson(Map<String, Object?> json) => PaymentAttempt(
        paymentMethodType: json["payment_method_type"] == null
            ? null
            : json["payment_method_type"] as String,
        paymentMethodId: json["payment_method_id"] == null
            ? null
            : json["payment_method_id"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        error: json["error"] == null
            ? null
            : PaymentAttemptError.fromJson(
                (json["error"] as Map).cast<String, Object?>(),
              ),
        status: PaymentAttemptStatus.fromJson(json["status"]),
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        succeededAt: json["succeeded_at"] == null
            ? null
            : _decodeDateTime(json["succeeded_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (paymentMethodType != null)
          "payment_method_type": _encodeValue(paymentMethodType),
        if (paymentMethodId != null)
          "payment_method_id": _encodeValue(paymentMethodId),
        if (reference != null) "reference": _encodeValue(reference),
        if (error != null) "error": _encodeValue(error),
        "status": _encodeValue(status),
        "initiated_at": _encodeValue(initiatedAt),
        if (succeededAt != null) "succeeded_at": _encodeValue(succeededAt),
      };
}
