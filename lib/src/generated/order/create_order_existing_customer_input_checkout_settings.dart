part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateOrderExistingCustomerInputCheckoutSettings
    implements _InttegroValue {
  final String? redirectUrl;
  final String? cancelUrl;
  const CreateOrderExistingCustomerInputCheckoutSettings({
    this.redirectUrl,
    this.cancelUrl,
  });
  factory CreateOrderExistingCustomerInputCheckoutSettings.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateOrderExistingCustomerInputCheckoutSettings(
        redirectUrl: json["redirect_url"] == null
            ? null
            : json["redirect_url"] as String,
        cancelUrl:
            json["cancel_url"] == null ? null : json["cancel_url"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (redirectUrl != null) "redirect_url": _encodeValue(redirectUrl),
        if (cancelUrl != null) "cancel_url": _encodeValue(cancelUrl),
      };
}
