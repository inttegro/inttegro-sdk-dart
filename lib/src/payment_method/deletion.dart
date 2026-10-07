part of '../../payment_method.dart';

/// The result of deleting a payment method.
///
/// Exposes [deleted] and [paymentMethodId].
final class Deletion implements InttegroValue {
  final bool deleted;
  final String paymentMethodId;
  const Deletion({
    required this.deleted,
    required this.paymentMethodId,
  });
  factory Deletion.fromJson(Map<String, Object?> json) => Deletion(
        deleted: json["deleted"] as bool,
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "deleted": encodeValue(deleted),
        "payment_method_id": encodeValue(paymentMethodId),
      };
}
