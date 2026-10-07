part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodOwner implements _InttegroValue {
  final PaymentMethodOwnerAddress? address;
  final String name;
  const PaymentMethodOwner({this.address, required this.name});
  factory PaymentMethodOwner.fromJson(Map<String, Object?> json) =>
      PaymentMethodOwner(
        address: json["address"] == null
            ? null
            : PaymentMethodOwnerAddress.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (address != null) "address": _encodeValue(address),
        "name": _encodeValue(name),
      };
}
