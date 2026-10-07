part of '../../../inttegro.dart';

/// Billing information returned with a payment.
final class PaymentBillingDetails implements _InttegroValue {
  final PaymentMethodSnapshotOwner? owner;
  const PaymentBillingDetails({this.owner});
  factory PaymentBillingDetails.fromJson(Map<String, Object?> json) =>
      PaymentBillingDetails(
        owner: json["owner"] == null
            ? null
            : PaymentMethodSnapshotOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (owner != null) "owner": _encodeValue(owner),
      };
}
