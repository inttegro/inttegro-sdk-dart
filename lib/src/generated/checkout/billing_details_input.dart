part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class BillingDetailsInput implements _InttegroValue {
  final AddressInput? address;
  final String name;
  final String emailAddress;
  final String phoneNumber;
  const BillingDetailsInput({
    this.address,
    required this.name,
    required this.emailAddress,
    required this.phoneNumber,
  });
  factory BillingDetailsInput.fromJson(Map<String, Object?> json) =>
      BillingDetailsInput(
        address: json["address"] == null
            ? null
            : AddressInput.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
        emailAddress: json["email_address"] as String,
        phoneNumber: json["phone_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (address != null) "address": _encodeValue(address),
        "name": _encodeValue(name),
        "email_address": _encodeValue(emailAddress),
        "phone_number": _encodeValue(phoneNumber),
      };
}
