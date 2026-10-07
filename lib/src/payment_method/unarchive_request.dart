part of '../../payment_method.dart';

/// Identifies the payment method to restore from its archive.
///
/// Carries [paymentMethodId].
final class UnarchiveRequest implements InttegroValue {
  final String paymentMethodId;
  const UnarchiveRequest({required this.paymentMethodId});
  factory UnarchiveRequest.fromJson(Map<String, Object?> json) =>
      UnarchiveRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": encodeValue(paymentMethodId),
      };
}
