part of '../../payment_method.dart';

/// Identifies the payment method to retrieve.
///
/// Carries [paymentMethodId].
final class LookupRequest implements InttegroValue {
  final String paymentMethodId;
  const LookupRequest({required this.paymentMethodId});
  factory LookupRequest.fromJson(Map<String, Object?> json) => LookupRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": encodeValue(paymentMethodId),
      };
}
