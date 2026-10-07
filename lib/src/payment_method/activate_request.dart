part of '../../payment_method.dart';

/// Identifies the payment method to activate.
///
/// Carries [paymentMethodId].
final class ActivateRequest implements InttegroValue {
  final String paymentMethodId;
  const ActivateRequest({required this.paymentMethodId});
  factory ActivateRequest.fromJson(Map<String, Object?> json) =>
      ActivateRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": encodeValue(paymentMethodId),
      };
}
