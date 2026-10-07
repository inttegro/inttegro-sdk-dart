part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CustomerDataInput implements _InttegroValue {
  final String? reference;
  final CustomDataInput? customData;
  final String name;
  final String emailAddress;
  final String phoneNumber;
  const CustomerDataInput({
    this.reference,
    this.customData,
    required this.name,
    required this.emailAddress,
    required this.phoneNumber,
  });
  factory CustomerDataInput.fromJson(Map<String, Object?> json) =>
      CustomerDataInput(
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        name: json["name"] as String,
        emailAddress: json["email_address"] as String,
        phoneNumber: json["phone_number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (reference != null) "reference": _encodeValue(reference),
        if (customData != null) "custom_data": _encodeValue(customData),
        "name": _encodeValue(name),
        "email_address": _encodeValue(emailAddress),
        "phone_number": _encodeValue(phoneNumber),
      };
}
