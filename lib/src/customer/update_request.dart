part of '../../customer.dart';

/// Parameters for updating a customer.
///
/// Carries [billingAddress], [customData], [emailAddress], and [name], among
/// other supported fields.
final class UpdateRequest implements InttegroValue {
  final AddressInput? billingAddress;
  final core.CustomDataPatch? customData;
  final String? emailAddress;
  final String? name;
  final String? phoneNumber;
  final String? reference;
  final AddressInput? shippingAddress;
  final String? suffix;
  final String? title;
  final String customerId;
  const UpdateRequest({
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
  factory UpdateRequest.fromJson(Map<String, Object?> json) => UpdateRequest(
        billingAddress: json["billing_address"] == null
            ? null
            : AddressInput.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : core.CustomDataPatch.fromJson(json["custom_data"]),
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
            : AddressInput.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
        suffix: json["suffix"] == null ? null : json["suffix"] as String,
        title: json["title"] == null ? null : json["title"] as String,
        customerId: json["customer_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (billingAddress != null)
          "billing_address": encodeValue(billingAddress),
        if (customData != null) "custom_data": encodeValue(customData),
        if (emailAddress != null) "email_address": encodeValue(emailAddress),
        if (name != null) "name": encodeValue(name),
        if (phoneNumber != null) "phone_number": encodeValue(phoneNumber),
        if (reference != null) "reference": encodeValue(reference),
        if (shippingAddress != null)
          "shipping_address": encodeValue(shippingAddress),
        if (suffix != null) "suffix": encodeValue(suffix),
        if (title != null) "title": encodeValue(title),
        "customer_id": encodeValue(customerId),
      };
}
