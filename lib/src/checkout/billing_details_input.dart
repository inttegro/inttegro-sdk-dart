part of '../../checkout.dart';

/// Billing details supplied during checkout.
///
/// Carries [address], [name], [emailAddress], and [phoneNumber].
final class BillingDetailsInput implements InttegroValue {
  final inttegro_shared.AddressInput? address;
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
            : inttegro_shared.AddressInput.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
        emailAddress: json["email_address"] as String,
        phoneNumber: json["phone_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (address != null) "address": encodeValue(address),
        "name": encodeValue(name),
        "email_address": encodeValue(emailAddress),
        "phone_number": encodeValue(phoneNumber),
      };
}
