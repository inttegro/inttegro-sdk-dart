part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateCustomerRequest implements _InttegroValue {
  final CustomerAddressInput? billingAddress;
  final CustomDataInput? customData;
  final String? emailAddress;
  final String? phoneNumber;
  final String? reference;
  final CustomerAddressInput? shippingAddress;
  final String? title;
  final String name;
  const CreateCustomerRequest({
    this.billingAddress,
    this.customData,
    this.emailAddress,
    this.phoneNumber,
    this.reference,
    this.shippingAddress,
    this.title,
    required this.name,
  });
  factory CreateCustomerRequest.fromJson(Map<String, Object?> json) =>
      CreateCustomerRequest(
        billingAddress: json["billing_address"] == null
            ? null
            : CustomerAddressInput.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        emailAddress: json["email_address"] == null
            ? null
            : json["email_address"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        shippingAddress: json["shipping_address"] == null
            ? null
            : CustomerAddressInput.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
        title: json["title"] == null ? null : json["title"] as String,
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (billingAddress != null)
          "billing_address": _encodeValue(billingAddress),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (emailAddress != null) "email_address": _encodeValue(emailAddress),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (reference != null) "reference": _encodeValue(reference),
        if (shippingAddress != null)
          "shipping_address": _encodeValue(shippingAddress),
        if (title != null) "title": _encodeValue(title),
        "name": _encodeValue(name),
      };
}
