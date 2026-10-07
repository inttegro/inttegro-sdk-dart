part of '../../order.dart';

/// Settings that control order behavior.
///
/// Exposes [redirectUrl] and [cancelUrl].
final class CheckoutSettings implements InttegroValue {
  final String? redirectUrl;
  final String? cancelUrl;
  const CheckoutSettings({this.redirectUrl, this.cancelUrl});
  factory CheckoutSettings.fromJson(Map<String, Object?> json) =>
      CheckoutSettings(
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
