part of '../../payment_method.dart';

/// Identifies the payment method to archive.
///
/// Carries [paymentMethodId].
final class ArchiveRequest implements InttegroValue {
  final String paymentMethodId;
  const ArchiveRequest({required this.paymentMethodId});
  factory ArchiveRequest.fromJson(Map<String, Object?> json) => ArchiveRequest(
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "payment_method_id": encodeValue(paymentMethodId),
      };
}
