part of '../../../inttegro.dart';

/// Public payment error information.
final class PaymentError implements _InttegroValue {
  final String message;
  const PaymentError({required this.message});
  factory PaymentError.fromJson(Map<String, Object?> json) =>
      PaymentError(message: json["message"] as String);
  @override
  Map<String, Object?> toJson() => {"message": _encodeValue(message)};
}
