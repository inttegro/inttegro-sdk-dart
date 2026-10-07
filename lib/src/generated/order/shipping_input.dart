part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ShippingInput implements _InttegroValue {
  final AddressInput address;
  const ShippingInput({required this.address});
  factory ShippingInput.fromJson(Map<String, Object?> json) => ShippingInput(
        address: AddressInput.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {"address": _encodeValue(address)};
}
