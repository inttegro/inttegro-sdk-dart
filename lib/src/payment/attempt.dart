part of '../../payment.dart';

/// One attempt to execute a payment with a payment method.
///
/// Exposes [paymentMethodType], [paymentMethodId], [reference], and [error],
/// among other contract fields.
final class Attempt implements InttegroValue {
  final String? paymentMethodType;
  final String? paymentMethodId;
  final String? reference;
  final AttemptError? error;
  final AttemptStatus status;
  final DateTime initiatedAt;
  final DateTime? succeededAt;
  const Attempt({
    this.paymentMethodType,
    this.paymentMethodId,
    this.reference,
    this.error,
    required this.status,
    required this.initiatedAt,
    this.succeededAt,
  });
  factory Attempt.fromJson(Map<String, Object?> json) => Attempt(
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
            : AttemptError.fromJson(
                (json["error"] as Map).cast<String, Object?>(),
              ),
        status: AttemptStatus.fromJson(json["status"]),
        initiatedAt: decodeDateTime(json["initiated_at"]),
        succeededAt: json["succeeded_at"] == null
            ? null
            : decodeDateTime(json["succeeded_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (paymentMethodType != null)
          "payment_method_type": encodeValue(paymentMethodType),
        if (paymentMethodId != null)
          "payment_method_id": encodeValue(paymentMethodId),
        if (reference != null) "reference": encodeValue(reference),
        if (error != null) "error": encodeValue(error),
        "status": encodeValue(status),
        "initiated_at": encodeValue(initiatedAt),
        if (succeededAt != null) "succeeded_at": encodeValue(succeededAt),
      };
}
