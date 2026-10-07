part of '../../payment_method.dart';

/// Identifies the payment method to deactivate.
///
/// Carries [paymentMethodId].
final class DisactivateRequest implements InttegroValue {
  final String paymentMethodId;
  const DisactivateRequest({required this.paymentMethodId});
  factory DisactivateRequest.fromJson(Map<String, Object?> json) =>
      DisactivateRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": encodeValue(paymentMethodId),
      };
}
