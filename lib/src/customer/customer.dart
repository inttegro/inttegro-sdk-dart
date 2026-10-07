part of '../../customer.dart';

/// A customer record, contact details, addresses, and current customer balance.
///
/// [fingerprint] identifies the customer within the API's matching model;
/// [guest] distinguishes guest records from persisted customer identities.
final class Customer implements InttegroValue {
  final core.CustomerBalance balance;
  final Address? billingAddress;
  final DateTime createdAt;
  final core.CustomData? customData;
  final String? emailAddress;
  final String fingerprint;
  final bool guest;
  final String id;
  final String name;
  final String? phoneNumber;
  final String? reference;
  final Address? shippingAddress;
  final String? suffix;
  final String? title;
  final DateTime? updatedAt;
  const Customer({
    required this.balance,
    this.billingAddress,
    required this.createdAt,
    this.customData,
    this.emailAddress,
    required this.fingerprint,
    required this.guest,
    required this.id,
    required this.name,
    this.phoneNumber,
    this.reference,
    this.shippingAddress,
    this.suffix,
    this.title,
    this.updatedAt,
  });
  factory Customer.fromJson(Map<String, Object?> json) => Customer(
        balance: core.CustomerBalance.fromJson(json["balance"]),
        billingAddress: json["billing_address"] == null
            ? null
            : Address.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        createdAt: decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        emailAddress: json["email_address"] == null
            ? null
            : json["email_address"] as String,
        fingerprint: json["fingerprint"] as String,
        guest: json["guest"] as bool,
        id: json["id"] as String,
        name: json["name"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        shippingAddress: json["shipping_address"] == null
            ? null
            : Address.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
        suffix: json["suffix"] == null ? null : json["suffix"] as String,
        title: json["title"] == null ? null : json["title"] as String,
        updatedAt: json["updated_at"] == null
            ? null
            : decodeDateTime(json["updated_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "balance": encodeValue(balance),
        if (billingAddress != null)
          "billing_address": encodeValue(billingAddress),
        "created_at": encodeValue(createdAt),
        if (customData != null) "custom_data": encodeValue(customData),
        if (emailAddress != null) "email_address": encodeValue(emailAddress),
        "fingerprint": encodeValue(fingerprint),
        "guest": encodeValue(guest),
        "id": encodeValue(id),
        "name": encodeValue(name),
        if (phoneNumber != null) "phone_number": encodeValue(phoneNumber),
        if (reference != null) "reference": encodeValue(reference),
        if (shippingAddress != null)
          "shipping_address": encodeValue(shippingAddress),
        if (suffix != null) "suffix": encodeValue(suffix),
        if (title != null) "title": encodeValue(title),
        if (updatedAt != null) "updated_at": encodeValue(updatedAt),
      };
}
