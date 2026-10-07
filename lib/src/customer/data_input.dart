part of '../../customer.dart';

/// Data fields accepted by the customer API.
///
/// Carries [reference], [customData], [name], and [emailAddress], among other
/// supported fields.
final class DataInput implements InttegroValue {
  final String? reference;
  final core.CustomDataInput? customData;
  final String name;
  final String emailAddress;
  final String phoneNumber;
  const DataInput({
    this.reference,
    this.customData,
    required this.name,
    required this.emailAddress,
    required this.phoneNumber,
  });
  factory DataInput.fromJson(Map<String, Object?> json) => DataInput(
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        customData: json["custom_data"] == null
            ? null
            : core.CustomDataInput.fromJson(json["custom_data"]),
        name: json["name"] as String,
        emailAddress: json["email_address"] as String,
        phoneNumber: json["phone_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (reference != null) "reference": encodeValue(reference),
        if (customData != null) "custom_data": encodeValue(customData),
        "name": encodeValue(name),
        "email_address": encodeValue(emailAddress),
        "phone_number": encodeValue(phoneNumber),
      };
}
