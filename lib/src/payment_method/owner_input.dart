part of '../../payment_method.dart';

/// Owner fields accepted by the payment method API.
///
/// Carries [address] and [name].
final class OwnerInput implements InttegroValue {
  final OwnerInputAddress address;
  final String name;
  const OwnerInput({required this.address, required this.name});
  factory OwnerInput.fromJson(Map<String, Object?> json) => OwnerInput(
        address: OwnerInputAddress.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": encodeValue(address),
        "name": encodeValue(name),
      };
}
