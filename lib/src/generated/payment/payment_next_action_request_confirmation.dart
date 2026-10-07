part of '../../../inttegro.dart';

/// Requests a new payment confirmation challenge.
final class PaymentNextActionRequestConfirmation implements _InttegroValue {
  final PaymentNextActionConfirmPaymentRequest? lastRequest;
  final DateTime? after;
  const PaymentNextActionRequestConfirmation({this.lastRequest, this.after});
  factory PaymentNextActionRequestConfirmation.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentNextActionRequestConfirmation(
        lastRequest: json["last_request"] == null
            ? null
            : PaymentNextActionConfirmPaymentRequest.fromJson(
                (json["last_request"] as Map).cast<String, Object?>(),
              ),
        after: json["after"] == null ? null : _decodeDateTime(json["after"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (lastRequest != null) "last_request": _encodeValue(lastRequest),
        if (after != null) "after": _encodeValue(after),
      };
}
