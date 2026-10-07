part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdatePaymentMethodRequestOwner implements _InttegroValue {
  final String? name;
  final UpdatePaymentMethodRequestOwnerAddress? address;
  const UpdatePaymentMethodRequestOwner({this.name, this.address});
  factory UpdatePaymentMethodRequestOwner.fromJson(Map<String, Object?> json) =>
      UpdatePaymentMethodRequestOwner(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null
            ? null
            : UpdatePaymentMethodRequestOwnerAddress.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (address != null) "address": _encodeValue(address),
      };
}
