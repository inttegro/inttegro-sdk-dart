part of '../../customer.dart';

/// Parameters for creating a customer.
///
/// Carries [billingAddress], [customData], [emailAddress], and [phoneNumber],
/// among other supported fields.
final class CreateRequest implements InttegroValue {
  final AddressInput? billingAddress;
  final core.CustomDataInput? customData;
  final String? emailAddress;
  final String? phoneNumber;
  final String? reference;
  final AddressInput? shippingAddress;
  final String? title;
  final String name;
  const CreateRequest({
    this.billingAddress,
    this.customData,
    this.emailAddress,
    this.phoneNumber,
    this.reference,
    this.shippingAddress,
    this.title,
    required this.name,
  });
  factory CreateRequest.fromJson(Map<String, Object?> json) => CreateRequest(
        billingAddress: json["billing_address"] == null
            ? null
            : AddressInput.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : core.CustomDataInput.fromJson(json["custom_data"]),
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
            : AddressInput.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
        title: json["title"] == null ? null : json["title"] as String,
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (billingAddress != null)
          "billing_address": encodeValue(billingAddress),
        if (customData != null) "custom_data": encodeValue(customData),
        if (emailAddress != null) "email_address": encodeValue(emailAddress),
        if (phoneNumber != null) "phone_number": encodeValue(phoneNumber),
        if (reference != null) "reference": encodeValue(reference),
        if (shippingAddress != null)
          "shipping_address": encodeValue(shippingAddress),
        if (title != null) "title": encodeValue(title),
        "name": encodeValue(name),
      };
}
