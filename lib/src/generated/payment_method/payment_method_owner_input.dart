part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PaymentMethodOwnerInput implements _InttegroValue {
  final PaymentMethodOwnerInputAddress address;
  final String name;
  const PaymentMethodOwnerInput({required this.address, required this.name});
  factory PaymentMethodOwnerInput.fromJson(Map<String, Object?> json) =>
      PaymentMethodOwnerInput(
        address: PaymentMethodOwnerInputAddress.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": _encodeValue(address),
        "name": _encodeValue(name),
      };
}
