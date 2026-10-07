part of '../../payment_method.dart';

/// The owner details associated with a payment method.
///
/// Exposes [address] and [name].
final class Owner implements InttegroValue {
  final OwnerAddress? address;
  final String name;
  const Owner({this.address, required this.name});
  factory Owner.fromJson(Map<String, Object?> json) => Owner(
        address: json["address"] == null
            ? null
            : OwnerAddress.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (address != null) "address": encodeValue(address),
        "name": encodeValue(name),
      };
}
