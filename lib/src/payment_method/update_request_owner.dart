part of '../../payment_method.dart';

/// Replacement owner fields for a payment method.
final class UpdateRequestOwner implements InttegroValue {
  final String? name;
  final UpdateRequestOwnerAddress? address;
  const UpdateRequestOwner({this.name, this.address});
  factory UpdateRequestOwner.fromJson(Map<String, Object?> json) =>
      UpdateRequestOwner(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null
            ? null
            : UpdateRequestOwnerAddress.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": encodeValue(name),
        if (address != null) "address": encodeValue(address),
      };
}
