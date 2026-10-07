part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentNextAction implements _InttegroValue {
  final PaymentNextActionType type;
  final PaymentNextActionConfirmPayment? confirmPayment;
  final PaymentNextActionRedirect? redirect;
  final PaymentNextActionAuthorize? authorize;
  final PaymentNextActionRequestConfirmation? requestConfirmation;
  const PaymentNextAction({
    required this.type,
    this.confirmPayment,
    this.redirect,
    this.authorize,
    this.requestConfirmation,
  });
  factory PaymentNextAction.fromJson(Map<String, Object?> json) =>
      PaymentNextAction(
        type: PaymentNextActionType.fromJson(json["type"]),
        confirmPayment: json["confirm_payment"] == null
            ? null
            : PaymentNextActionConfirmPayment.fromJson(
                (json["confirm_payment"] as Map).cast<String, Object?>(),
              ),
        redirect: json["redirect"] == null
            ? null
            : PaymentNextActionRedirect.fromJson(
                (json["redirect"] as Map).cast<String, Object?>(),
              ),
        authorize: json["authorize"] == null
            ? null
            : PaymentNextActionAuthorize.fromJson(
                (json["authorize"] as Map).cast<String, Object?>(),
              ),
        requestConfirmation: json["request_confirmation"] == null
            ? null
            : PaymentNextActionRequestConfirmation.fromJson(
                (json["request_confirmation"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (confirmPayment != null)
          "confirm_payment": _encodeValue(confirmPayment),
        if (redirect != null) "redirect": _encodeValue(redirect),
        if (authorize != null) "authorize": _encodeValue(authorize),
        if (requestConfirmation != null)
          "request_confirmation": _encodeValue(requestConfirmation),
      };
}
