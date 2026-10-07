part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateOrderNewCustomerInputCheckoutSettings
    implements _InttegroValue {
  final String? redirectUrl;
  final String? cancelUrl;
  const CreateOrderNewCustomerInputCheckoutSettings({
    this.redirectUrl,
    this.cancelUrl,
  });
  factory CreateOrderNewCustomerInputCheckoutSettings.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateOrderNewCustomerInputCheckoutSettings(
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
