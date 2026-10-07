part of '../../order.dart';

/// Checkout redirects supplied when creating an order for a new customer.
final class CreateNewCustomerInputCheckoutSettings implements InttegroValue {
  final String? redirectUrl;
  final String? cancelUrl;
  const CreateNewCustomerInputCheckoutSettings({
    this.redirectUrl,
    this.cancelUrl,
  });
  factory CreateNewCustomerInputCheckoutSettings.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateNewCustomerInputCheckoutSettings(
        redirectUrl: json["redirect_url"] == null
            ? null
            : json["redirect_url"] as String,
        cancelUrl:
            json["cancel_url"] == null ? null : json["cancel_url"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (redirectUrl != null) "redirect_url": encodeValue(redirectUrl),
        if (cancelUrl != null) "cancel_url": encodeValue(cancelUrl),
      };
}
