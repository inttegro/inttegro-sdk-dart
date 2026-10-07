part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodSnapshotOwner implements _InttegroValue {
  final String name;
  final OrderAddress? address;
  const PaymentMethodSnapshotOwner({required this.name, this.address});
  factory PaymentMethodSnapshotOwner.fromJson(Map<String, Object?> json) =>
      PaymentMethodSnapshotOwner(
        name: json["name"] as String,
        address: json["address"] == null
            ? null
            : OrderAddress.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        if (address != null) "address": _encodeValue(address),
      };
}
