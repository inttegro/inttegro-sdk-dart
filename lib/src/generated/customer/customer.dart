part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class Customer implements _InttegroValue {
  final CustomerBalance balance;
  final CustomerAddress? billingAddress;
  final DateTime createdAt;
  final CustomData? customData;
  final String? emailAddress;
  final String fingerprint;
  final bool guest;
  final String id;
  final String name;
  final String? phoneNumber;
  final String? reference;
  final CustomerAddress? shippingAddress;
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
        balance: CustomerBalance.fromJson(json["balance"]),
        billingAddress: json["billing_address"] == null
            ? null
            : CustomerAddress.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        createdAt: _decodeDateTime(json["created_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
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
            : CustomerAddress.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
        suffix: json["suffix"] == null ? null : json["suffix"] as String,
        title: json["title"] == null ? null : json["title"] as String,
        updatedAt: json["updated_at"] == null
            ? null
            : _decodeDateTime(json["updated_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "balance": _encodeValue(balance),
        if (billingAddress != null)
          "billing_address": _encodeValue(billingAddress),
        "created_at": _encodeValue(createdAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (emailAddress != null) "email_address": _encodeValue(emailAddress),
        "fingerprint": _encodeValue(fingerprint),
        "guest": _encodeValue(guest),
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (reference != null) "reference": _encodeValue(reference),
        if (shippingAddress != null)
          "shipping_address": _encodeValue(shippingAddress),
        if (suffix != null) "suffix": _encodeValue(suffix),
        if (title != null) "title": _encodeValue(title),
        if (updatedAt != null) "updated_at": _encodeValue(updatedAt),
      };
}
