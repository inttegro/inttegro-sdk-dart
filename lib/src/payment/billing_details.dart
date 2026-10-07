part of '../../payment.dart';

/// Billing information returned with a payment.
final class BillingDetails implements InttegroValue {
  final inttegro_payment_method.SnapshotOwner? owner;
  const BillingDetails({this.owner});
  factory BillingDetails.fromJson(Map<String, Object?> json) => BillingDetails(
        owner: json["owner"] == null
            ? null
            : inttegro_payment_method.SnapshotOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (owner != null) "owner": encodeValue(owner),
      };
}
