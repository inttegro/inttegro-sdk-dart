part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdateCustomerRequest implements _InttegroValue {
  final CustomerAddressInput? billingAddress;
  final CustomDataPatch? customData;
  final String? emailAddress;
  final String? name;
  final String? phoneNumber;
  final String? reference;
  final CustomerAddressInput? shippingAddress;
  final String? suffix;
  final String? title;
  final String customerId;
  const UpdateCustomerRequest({
    this.billingAddress,
    this.customData,
    this.emailAddress,
    this.name,
    this.phoneNumber,
    this.reference,
    this.shippingAddress,
    this.suffix,
    this.title,
    required this.customerId,
  });
  factory UpdateCustomerRequest.fromJson(Map<String, Object?> json) =>
      UpdateCustomerRequest(
        billingAddress: json["billing_address"] == null
            ? null
            : CustomerAddressInput.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomDataPatch.fromJson(json["custom_data"]),
        emailAddress: json["email_address"] == null
            ? null
            : json["email_address"] as String,
        name: json["name"] == null ? null : json["name"] as String,
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
        suffix: json["suffix"] == null ? null : json["suffix"] as String,
        title: json["title"] == null ? null : json["title"] as String,
        customerId: json["customer_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (billingAddress != null)
          "billing_address": _encodeValue(billingAddress),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (emailAddress != null) "email_address": _encodeValue(emailAddress),
        if (name != null) "name": _encodeValue(name),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (reference != null) "reference": _encodeValue(reference),
        if (shippingAddress != null)
          "shipping_address": _encodeValue(shippingAddress),
        if (suffix != null) "suffix": _encodeValue(suffix),
        if (title != null) "title": _encodeValue(title),
        "customer_id": _encodeValue(customerId),
      };
}
