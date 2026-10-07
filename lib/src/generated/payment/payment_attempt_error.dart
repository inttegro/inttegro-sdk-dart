part of '../../../inttegro.dart';

/// Public error information for a payment attempt.
final class PaymentAttemptError implements _InttegroValue {
  final String message;
  const PaymentAttemptError({required this.message});
  factory PaymentAttemptError.fromJson(Map<String, Object?> json) =>
      PaymentAttemptError(message: json["message"] as String);
  @override
  Map<String, Object?> toJson() => {"message": _encodeValue(message)};
}
