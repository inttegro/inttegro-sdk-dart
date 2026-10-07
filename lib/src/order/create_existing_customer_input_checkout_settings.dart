part of '../../order.dart';

/// Checkout redirects supplied when creating an order for an existing
/// customer.
final class CreateExistingCustomerInputCheckoutSettings
    implements InttegroValue {
  final String? redirectUrl;
  final String? cancelUrl;
  const CreateExistingCustomerInputCheckoutSettings({
    this.redirectUrl,
    this.cancelUrl,
  });
  factory CreateExistingCustomerInputCheckoutSettings.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateExistingCustomerInputCheckoutSettings(
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
