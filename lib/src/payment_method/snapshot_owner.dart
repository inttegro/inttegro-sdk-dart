part of '../../payment_method.dart';

/// Owner details preserved in a payment-method snapshot.
final class SnapshotOwner implements InttegroValue {
  final String name;
  final inttegro_order.Address? address;
  const SnapshotOwner({required this.name, this.address});
  factory SnapshotOwner.fromJson(Map<String, Object?> json) => SnapshotOwner(
        name: json["name"] as String,
        address: json["address"] == null
            ? null
            : inttegro_order.Address.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "name": encodeValue(name),
        if (address != null) "address": encodeValue(address),
      };
}
