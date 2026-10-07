part of '../../payment.dart';

/// The action required to advance a payment.
///
/// Exposes [type], [confirmPayment], [redirect], and [authorize], among other
/// contract fields.
final class NextAction implements InttegroValue {
  final NextActionType type;
  final NextActionConfirm? confirmPayment;
  final NextActionRedirect? redirect;
  final NextActionAuthorize? authorize;
  final NextActionRequestConfirmation? requestConfirmation;
  const NextAction({
    required this.type,
    this.confirmPayment,
    this.redirect,
    this.authorize,
    this.requestConfirmation,
  });
  factory NextAction.fromJson(Map<String, Object?> json) => NextAction(
        type: NextActionType.fromJson(json["type"]),
        confirmPayment: json["confirm_payment"] == null
            ? null
            : NextActionConfirm.fromJson(
                (json["confirm_payment"] as Map).cast<String, Object?>(),
              ),
        redirect: json["redirect"] == null
            ? null
            : NextActionRedirect.fromJson(
                (json["redirect"] as Map).cast<String, Object?>(),
              ),
        authorize: json["authorize"] == null
            ? null
            : NextActionAuthorize.fromJson(
                (json["authorize"] as Map).cast<String, Object?>(),
              ),
        requestConfirmation: json["request_confirmation"] == null
            ? null
            : NextActionRequestConfirmation.fromJson(
                (json["request_confirmation"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        if (confirmPayment != null)
          "confirm_payment": encodeValue(confirmPayment),
        if (redirect != null) "redirect": encodeValue(redirect),
        if (authorize != null) "authorize": encodeValue(authorize),
        if (requestConfirmation != null)
          "request_confirmation": encodeValue(requestConfirmation),
      };
}
