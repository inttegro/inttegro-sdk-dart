part of '../../order.dart';

/// Shipping fields accepted by the order API.
///
/// Carries [address].
final class ShippingInput implements InttegroValue {
  final inttegro_shared.AddressInput address;
  const ShippingInput({required this.address});
  factory ShippingInput.fromJson(Map<String, Object?> json) => ShippingInput(
        address: inttegro_shared.AddressInput.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {"address": encodeValue(address)};
}
